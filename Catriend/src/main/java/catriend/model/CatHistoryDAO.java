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

public class CatHistoryDAO {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
   
	//기본생성자
	public CatHistoryDAO(){
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
	// CatHistory 총 갯수 가져오기(검색가능)
	public int getTotalCatHistory(Map<String, Object> map){
	   int totalCatHistory = 0;
	   try{
	      String sql = "SELECT count(*) FROM CatHistory";
	      
	      // 검색단어가 있을 경우 검색조건을 쿼리에 추가
	      if(map.get("WORD")!=null){
	         sql += " where "+ map.get("COLUMN")+" like '%"+ map.get("WORD") +"%' ";
	      }
	      
	      psmt = conn.prepareStatement(sql);
	      rs = psmt.executeQuery();
	      rs.next();
	      totalCatHistory = rs.getInt(1);
	   }
	   catch(Exception e){
	      e.printStackTrace();
	   }
	   
	   return totalCatHistory;
	}
	
	// QnA 입력
	public boolean InsertCatHistory(CatHistoryDTO dto, int ct_index){
	   try{
	      String sql = "INSERT INTO "
	            + " CatHistory(ch_index, ch_catio, ch_date, u_id, c_index) "
	            + " VALUES (catHistory_seq.nextval, ?, ?, ?, ?)";
	      
	      psmt = conn.prepareStatement(sql);
	      
	      psmt.setInt(1, dto.getCh_catio());
	      psmt.setDate(2, dto.getCh_date());
	      psmt.setString(3, dto.getU_id());
	      psmt.setInt(4, dto.getC_index());
	      
	      rs = psmt.executeQuery();
	      rs.next();
	      
	      // 입력이 없으면
	      if(rs.getInt(1)==0) return false;
	   }
	   catch(Exception e){
	      // 에러나도 false
	      e.printStackTrace();
	      System.out.println("InsertCatHistory 예외 발생");
	      return false;
	   }
	   // 통과
	   return true;
	}
	
	public boolean UpdateCatHistory(CatHistoryDTO dto){
		try{
			String sql = " UPDATE CatHistory "
					+ " SET ch_catio=?, ch_date=?, u_id=?, c_index=? "
					+ " WHERE ch_index = ? ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getCh_catio());
			psmt.setDate(2, dto.getCh_date());
			psmt.setString(3, dto.getU_id());
			psmt.setInt(4, dto.getC_index());
			psmt.setInt(5, dto.getCh_index());
			
			
			rs = psmt.executeQuery();
			rs.next();
			
			// 없으면 false
			if(rs.getInt(1)==0) return false;
		}
		catch(Exception e){
			// 에러나도 false
			e.printStackTrace();
			System.out.println("UpdateCatHistory 예외 발생");
			return false;
		}
		// 통과
		return true;
	}
	
	 
	// CatHistory 게시판 상세보기
	public CatHistoryDTO selectOne(int ch_index){
		CatHistoryDTO dto = null;
	   try{
	      String sql = "SELECT * FROM CatHistory WHERE q_index=?";
	      psmt = conn.prepareStatement(sql);
	      psmt.setInt(1, ch_index);
	      
	      rs = psmt.executeQuery();
	      if(rs.next()){
	         dto = new CatHistoryDTO();
	         dto.setCh_index(rs.getInt(1));
	         dto.setCh_catio(rs.getInt(2));
	         dto.setCh_date(rs.getDate(3));
	         dto.setU_id(rs.getString(4));
	         dto.setC_index(rs.getInt(5));
	         }
	      }
	      catch(Exception e){
	         e.printStackTrace();
	         System.out.println("selectOne 예외 발생");
	      }
	   
	      return dto;
	}
	
	public List<CatHistoryDTO> selectAll(Map<String, Object> map){
	   List<CatHistoryDTO> contract = new Vector<CatHistoryDTO>();
	   try{
	     String sql = "";
	     sql += "SELECT * FROM ( "
	        + "SELECT Tb.* , rownum rNum FROM ( "
	           + "SELECT * FROM CatHistory ";
	        if(map.get("COLUMN") != null){
	           sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
	        }
	        sql += " ORDER BY ch_index DESC) Tb "
	     + ") WHERE rNum BETWEEN ? AND ? ";
	      
	      psmt=conn.prepareStatement(sql);
	      psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
	      psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
	      
	      rs = psmt.executeQuery();
	      while(rs.next()){
    	  CatHistoryDTO dto = new CatHistoryDTO();
	       
    	 dto.setCh_index(rs.getInt(1));
         dto.setCh_catio(rs.getInt(2));
         dto.setCh_date(rs.getDate(3));
         dto.setU_id(rs.getString(4));
         dto.setC_index(rs.getInt(5));
	      contract.add(dto);
	      }
	   }
	   catch(Exception e){
	      e.printStackTrace();
	      System.out.println("selectAll 예외 발생");
	   }
	   
	   return contract;
	}
}
