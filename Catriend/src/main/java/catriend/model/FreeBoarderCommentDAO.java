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

public class FreeBoarderCommentDAO {
	private Connection conn;
	   private ResultSet rs;
	   private PreparedStatement psmt;
	   
	   //기본생성자
	   public FreeBoarderCommentDAO(){
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
	    //총수
	    public int getTotalFreeBoarderCommentCount(){
	       int totalFreeBoarderComment = 0;
	       try{
	          String sql = "SELECT count(*) FROM freeboardercomment";
	          
	          psmt = conn.prepareStatement(sql);
	          rs = psmt.executeQuery();
	          rs.next();
	          totalFreeBoarderComment = rs.getInt(1);
	       }
	       catch(Exception e){
	          e.printStackTrace();
	       }
	       
	       return totalFreeBoarderComment;
	    }
	    
	    //입력
	    public boolean InsertFreeBoarderComment(FreeBoarderCommentDTO dto){
	       try{
	          String sql = "INSERT INTO "
	                + " freeboardercomment (fbc_index, fbc_content, fbc_date, fbc_group, fbc_step, fbc_depth, u_id, fb_index) "
	                + " VALUES (freeboardercomment_seq.nextval, ?, ?, freeboardercomment_seq.currval, 0, 0, ?, ?)";
	          
	          psmt = conn.prepareStatement(sql);
	          
	          psmt.setString(1, dto.getFbc_content());
	          psmt.setDate(2, dto.getFbc_date());
	          psmt.setString(3, dto.getU_id());
	          psmt.setInt(4, dto.getFb_index());
	          
	          rs = psmt.executeQuery();
	          rs.next();
	          
	          // 없으면 false
	          if(rs.getInt(1)==0) return false;
	       }
	       catch(Exception e){
	          // 에러나도 false
	          e.printStackTrace();
	          System.out.println("InsertFreeBoarderComment 예외 발생");
	          return false;
	       }
	       // 통과
	       return true;
	    } 
	    
	    //삭제
	    public boolean DeleteFreeBoarderComment(int fbc_index){
	       try{
	          String sql = " DELETE FROM freeboardercomment WHERE fbc_index=? ";
	          
	          psmt = conn.prepareStatement(sql);
	          
	          psmt.setInt(1, fbc_index);
	          
	          rs = psmt.executeQuery();
	          rs.next();
	          
	         // 없으면 false
	         if(rs.getInt(1)==0) return false;
	       }
	       catch(Exception e){
	          // 에러나도 false
	          e.printStackTrace();
	          System.out.println("DeleteFreeBoarderComment 예외 발생");
	          return false;
	       }
	       // 통과
	       return true;
	    } 
	    
	    //정보변경
	    public boolean UpdateFreeBoarderComment(FreeBoarderCommentDTO dto){
	       try{
	          String sql = " UPDATE freeboardercomment "
	                + " SET fbc_content = ?, fbc_date = ? WHERE fbc_index = ? ";
	          psmt = conn.prepareStatement(sql);
	          
	          psmt.setString(1, dto.getFbc_content());
	          psmt.setDate(2, dto.getFbc_date());
	          psmt.setInt(3, dto.getFbc_index());
	          
	          rs = psmt.executeQuery();
	          rs.next();
	          
	          // 없으면 false
	          if(rs.getInt(1)==0) return false;
	       }
	       catch(Exception e){
	          // 에러나도 false
	          e.printStackTrace();
	          System.out.println("UpdateFreeBoarderComment 예외 발생");
	          return false;
	       }
	       // 통과
	       return true;
	    }
	     
	    //한개 정보 가져오기
	    public FreeBoarderCommentDTO selectOne(int fbc_index){
	    	FreeBoarderCommentDTO dto = null;
	       try{
	          String sql = "SELECT * FROM freeboardercomment WHERE fbc_index=?";
	          psmt = conn.prepareStatement(sql);
	          psmt.setInt(1, fbc_index);
	          
	          rs = psmt.executeQuery();
	          if(rs.next()){
	             dto = new FreeBoarderCommentDTO(rs.getInt(1), rs.getString(2), rs.getDate(3),
	            		  rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getInt(8));
	             }
	          }
	          catch(Exception e){
	             e.printStackTrace();
	          }
	       
	          return dto;
	    }
	    
	    //전체정보
	    public List<FreeBoarderCommentDTO> selectAll(Map<String, Object> map){
	       List<FreeBoarderCommentDTO> freeBoarderComments = new Vector<FreeBoarderCommentDTO>();
	       try{
	         String sql = "";
	         sql += "SELECT * FROM ( "
	            + "SELECT Tb.* , rownum rNum FROM ( "
	               + "SELECT * FROM freeboardercomment ";
	            if(map.get("COLUMN") != null){
	               sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
	            }
	            sql += " ORDER BY fbc_index DESC) Tb "
	         + ") WHERE rNum BETWEEN ? AND ? ";
	          
	          psmt=conn.prepareStatement(sql);
	          psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
	          psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
	          
	          rs = psmt.executeQuery();
	          while(rs.next()){
	        	  FreeBoarderCommentDTO dto = new FreeBoarderCommentDTO(rs.getInt(1), rs.getString(2), rs.getDate(3),
	            		  rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getInt(8));

	        	  freeBoarderComments.add(dto);
	          }
	       }
	       catch(Exception e){
	          e.printStackTrace();
	       }
	       
	       return freeBoarderComments;
	    }
}
