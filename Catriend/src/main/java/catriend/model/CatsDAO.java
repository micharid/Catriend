package catriend.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class CatsDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
	
	//기본생성자
	public CatsDAO(){
		try{
			//커넥션 풀 형식으로 DB접근
			Context ctx = new InitialContext();
			DataSource source = (DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
			conn = source.getConnection();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//자원반납
    public void close(){
    	try{
    		if(rs!=null) rs.close();
    		if(conn!=null) conn.close();
    		if(psmt!=null) psmt.close();
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    }
    //고양이 총수 가져오기(검색가능)
    public int getTotalCatsCount(Map<String, Object> map){
 	   int totalCats = 0;
 	   try{
 		   String sql = "SELECT count(*) FROM cats";
 		   
 		   // 검색단어가 있을 경우 검색조건을 쿼리에 추가
 		   if(map.get("WORD")!=null){
 			   sql += " where "+ map.get("COLUMN")+" like '%"+ map.get("WORD") +"%' ";
 		   }
 		   
 		   psmt = conn.prepareStatement(sql);
 		   rs = psmt.executeQuery();
 		   rs.next();
 		  totalCats = rs.getInt(1);
 	   }
 	   catch(Exception e){
 		   e.printStackTrace();
 	   }
 	   
 	   return totalCats;
    }
    
    //고양이 입력
    public boolean InsertCat(CatsDTO dto){
    	try{
    		String sql = "INSERT INTO "
    				+ " cats(c_index, c_name, c_birthday, c_gender, "
    				+ " c_type, c_keyword, c_grade, c_comeday, c_detail) "
    				+ " VALUES (cats_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate,?)";
    		
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, dto.getC_name());
    		psmt.setDate(2, dto.getC_birthday());
    		psmt.setString(3, dto.getC_gender());
    		psmt.setString(4, dto.getC_type());
    		psmt.setString(5, dto.getC_keyword());
    		psmt.setInt(6, dto.getC_grade());
    		psmt.setString(7, dto.getC_detail());
    		rs = psmt.executeQuery();
    		rs.next();
    		
    		// 1마리도 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("InsertCat 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    //고양이 비활성화
    public boolean DeleteCat(CatsDTO dto){
    	try{
    		String sql = " Update cats "
    				+ " SET c_state = 0"
    				+ "WHERE c_index = ?";
    		psmt = conn.prepareStatement(sql);
    		psmt.setInt(1, dto.getC_index());
    		rs = psmt.executeQuery();
    		rs.next();
    		
			// 1명도 없으면 false
			if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("DeleteCat 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    //고양이 정보변경
    public boolean UpdateCat(CatsDTO dto){
    	try{
    		String sql = " UPDATE cats "
    				+ " SET c_keyword=?, c_health=?, c_grade=?, c_sday=?, c_eday=? "
    				+ " WHERE c_index = ? ";
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, dto.getC_keyword());
    		psmt.setString(2, dto.getC_health());
    		psmt.setInt(3, dto.getC_grade());
    		psmt.setDate(4, dto.getC_sday());
    		psmt.setDate(5, dto.getC_eday());
    		
    		psmt.setInt(6, dto.getC_index());
    		rs = psmt.executeQuery();
    		rs.next();
    		
    		// 1마리도 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("UpdateCat 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    }
    
    //고양이 한마리 정보 가져오기
    public CatsDTO selectOne(int c_id){
    	CatsDTO dto = null;
    	try{
    		String sql = "SELECT * FROM cats WHERE c_index=?";
    		psmt = conn.prepareStatement(sql);
    		psmt.setInt(1, c_id);
 		   
    		rs = psmt.executeQuery();
    		if(rs.next()){
    			dto = new CatsDTO();
 			   	dto.setC_index(rs.getInt(1));
 			   	dto.setC_name(rs.getString(2));
 			   	dto.setC_birthday(rs.getDate(3));
 			   	dto.setC_gender(rs.getString(4));
 			   	dto.setC_type(rs.getString(5));
 			   	dto.setC_keyword(rs.getString(6));
 			   	dto.setC_health(rs.getString(7));
 			   	dto.setC_grade(rs.getInt(8));
 			   	dto.setC_comeday(rs.getDate(9));
 			   	dto.setC_sday(rs.getDate(10));
 			   	dto.setC_eday(rs.getDate(11));
 			   	dto.setC_detail(rs.getString(12));
 		   	}
 	   	}
 	   	catch(Exception e){
 	   		e.printStackTrace();
 	   	}
 	   
 	   	return dto;
    }
    
    public List<CatsDTO> selectAll(Map<String, Object> map){
 	   List<CatsDTO> cats = new Vector<CatsDTO>();
 	   try{
 		  String sql = "";
			sql += "SELECT * FROM ( "
				+ "SELECT Tb.* , rownum rNum FROM ( "
					+ "SELECT * FROM cats ";
				if(map.get("COLUMN") != null){
					sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
				}
				sql += " ORDER BY c_type asc) Tb "
			+ ") WHERE rNum BETWEEN ? AND ? ";
 		   
 		   psmt=conn.prepareStatement(sql);
 		   psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
 		   psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
 		   
 		   rs = psmt.executeQuery();
 		   while(rs.next()){
 			  CatsDTO dto = new CatsDTO(); 
 			   
 			  dto.setC_index(rs.getInt(1));
 			  dto.setC_name(rs.getString(2));
 			  dto.setC_birthday(rs.getDate(3));
 			  dto.setC_gender(rs.getString(4));
 			  dto.setC_type(rs.getString(5));
 			  dto.setC_keyword(rs.getString(6));
 			  dto.setC_health(rs.getString(7));
 			  dto.setC_grade(rs.getInt(8));
 			  dto.setC_comeday(rs.getDate(9));
 			  dto.setC_sday(rs.getDate(10));
 			  dto.setC_eday(rs.getDate(11));
 			  dto.setC_detail(rs.getString(12));
 			  
 			  cats.add(dto);
 		   }
 	   }
 	   catch(Exception e){
 		   e.printStackTrace();
 	   }
 	   
 	   return cats;
    }
    
}
