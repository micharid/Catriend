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

public class FreeBoarderDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
	
	//기본생성자
	public FreeBoarderDAO(){
		try{
			//커넥션 풀 형식으로 DB접근
			Context ctx = new InitialContext();
			DataSource source = (DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
			conn = source.getConnection();
			System.out.println("연결성공");
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
    
    //자유게시물 총수 가져오기(검색가능)
    public int getTotalFreeBoarderCount(Map<String, Object> map){
 	   int totalFreeBoarders = 0;
 	   try{
 		   String sql = "SELECT count(*) FROM freeboarder";
 		   
 		   // 검색단어가 있을 경우 검색조건을 쿼리에 추가
 		   if(map.get("WORD")!=null){
 			   sql += " where "+ map.get("COLUMN")+" like '%"+ map.get("WORD") +"%' ";
 		   }
 		   
 		   psmt = conn.prepareStatement(sql);
 		   rs = psmt.executeQuery();
 		   rs.next();
 		  totalFreeBoarders = rs.getInt(1);
 	   }
 	   catch(Exception e){
 		   e.printStackTrace();
 	   }
 	   
 	   return totalFreeBoarders;
    }
    
    //자유게시물 입력
    public boolean InsertFreeBoarder(FreeBoarderDTO dto){
    	try{
    		String sql = "INSERT INTO "
    				+ " freeboarder(fb_index, fb_title, fb_file, fb_date, "
    				+ " fb_likecount, u_id) "
    				+ " VALUES (freeboarder_seq.nextval, ?, ?, sysdate, ?, ?)";
    		
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, dto.getFb_title());
    		psmt.setString(2, dto.getFb_file());
    		psmt.setDate(3, dto.getFb_date());
    		psmt.setInt(4, dto.getFb_likecount());
    		
    		rs = psmt.executeQuery();
    		rs.next();
    		
    		// 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("InsertFreeBoarder 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    //자유게시물 삭제
    public boolean DeleteFreeBoarder(int fb_index){
    	try{
    		String sql = " DELETE FROM freeboarder "
    				+ " WHERE fb_index = ? ";
    		psmt = conn.prepareStatement(sql);
    		psmt.setInt(1, fb_index);
    		
    		rs = psmt.executeQuery();
    		rs.next();
    		
			// 없으면 false
			if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("DeleteFreeBoarder 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    //자유게시물 변경
    public boolean UpdateCat(FreeBoarderDTO dto){
    	try{
    		String sql = " UPDATE freeboarder "
    				+ " SET fb_title = ?, fb_content = ?, fb_file = ?, fb_date = ? "
    				+ " WHERE fb_index = ? ";
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, dto.getFb_title());
    		psmt.setString(2, dto.getFb_content());
    		psmt.setString(3, dto.getFb_file());
    		psmt.setDate(4, dto.getFb_date());
    		
    		psmt.setInt(5, dto.getFb_index());
    		rs = psmt.executeQuery();
    		rs.next();
    		
    		// 없으면 false
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
    
    //게시물 한개 정보 가져오기
    public FreeBoarderDTO selectOne(int fb_index){
    	FreeBoarderDTO dto = null;
    	try{
    		String sql = "SELECT * FROM freeboarder WHERE fb_index = ? ";
    		psmt = conn.prepareStatement(sql);
    		psmt.setInt(1, fb_index);
 		   
    		rs = psmt.executeQuery();
    		if(rs.next()){
    			dto = new FreeBoarderDTO(rs.getInt(1), rs.getString(2), 
    					rs.getString(3), rs.getString(4), rs.getDate(5), 
    					rs.getInt(6), rs.getInt(7), rs.getString(8));
 		   	}
 	   	}
 	   	catch(Exception e){
 	   		e.printStackTrace();
 	   	}
 	   
 	   	return dto;
    }
    //자유게시물 전부가져오기(검색, 페이징)
    public List<FreeBoarderDTO> selectAll(Map<String, Object> map){
 	   List<FreeBoarderDTO> freeboarders = new Vector<FreeBoarderDTO>();
 	   try{
 		  String sql = "";
			sql += "SELECT * FROM ( "
				+ "SELECT Tb.* , rownum rNum FROM ( "
					+ "SELECT * FROM freeboarder ";
				if(map.get("COLUMN") != null){
					sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
				}
				sql += " ORDER BY fb_index DESC ) Tb "
			+ ") WHERE rNum BETWEEN ? AND ? ";
 		   
 		   psmt=conn.prepareStatement(sql);
 		   psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
 		   psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
 		   
 		   rs = psmt.executeQuery();
 		   while(rs.next()){
				FreeBoarderDTO dto = new FreeBoarderDTO(rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getString(4), rs.getDate(5), 
						rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getInt(9));
				
				freeboarders.add(dto);
 		   }
 	   }
 	   catch(Exception e){
 		   e.printStackTrace();
 	   }
 	   
 	   return freeboarders;
    }
}
