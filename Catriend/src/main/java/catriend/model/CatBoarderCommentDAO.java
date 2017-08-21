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

public class CatBoarderCommentDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
   
	//기본생성자
	public CatBoarderCommentDAO(){
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
    public int getTotalCatBoarderCommentCount(){
    	int totalCatBoarderComment = 0;
    	try{
    		String sql = "SELECT count(*) FROM CatBoarderComment";
          
    		psmt = conn.prepareStatement(sql);
    		rs = psmt.executeQuery();
    		rs.next();
    		totalCatBoarderComment = rs.getInt(1);
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
       
    	return totalCatBoarderComment;
    }
    
    //입력
    public boolean InsertCatBoarderComment(CatBoarderCommentDTO dto){
    	try{
    		String sql = "INSERT INTO "
    				+ " CatBoarderComment (cbc_index, cbc_content, cbc_date, cbc_group, cbc_step, cbc_depth, u_id, cb_index) "
    				+ " VALUES (CatBoarderComment_seq.nextval, ?, ?, CatBoarderComment_seq.currval, 0, 0, ?, ?)";
          
    		psmt = conn.prepareStatement(sql);
          
    		psmt.setString(1, dto.getCbc_content());
    		psmt.setDate(2, dto.getCbc_date());
    		psmt.setString(3, dto.getU_id());
    		psmt.setInt(4, dto.getCb_index());
          
    		rs = psmt.executeQuery();
    		rs.next();
          
    		// 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("InsertCatBoarderComment 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    
    //삭제
    public boolean DeleteCatBoarderComment(int cbc_index){
    	try{
    		String sql = " DELETE FROM CatBoarderComment WHERE cbc_index=? ";
          
    		psmt = conn.prepareStatement(sql);
          
    		psmt.setInt(1, cbc_index);
          
    		rs = psmt.executeQuery();
    		rs.next();
          
    		// 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("DeleteCatBoarderComment 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
	} 
    
    //정보변경
    public boolean UpdateCatBoarderComment(CatBoarderCommentDTO dto){
    	try{
    		String sql = " UPDATE CatBoarderComment "
    				+ " SET cbc_content = ?, cbc_date = ? WHERE cbc_index = ? ";
    		psmt = conn.prepareStatement(sql);
          
    		psmt.setString(1, dto.getCbc_content());
    		psmt.setDate(2, dto.getCbc_date());
    		psmt.setInt(3, dto.getCbc_index());
          
    		rs = psmt.executeQuery();
    		rs.next();
          
    		// 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("UpdateCatBoarderComment 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    }
     
    //한개 정보 가져오기
    public CatBoarderCommentDTO selectOne(int cbc_index){
    	CatBoarderCommentDTO dto = null;
    	try{
    		String sql = "SELECT * FROM CatBoarderComment WHERE cbc_index=?";
    		psmt = conn.prepareStatement(sql);
    		psmt.setInt(1, cbc_index);
          
    		rs = psmt.executeQuery();
    		if(rs.next()){
    			dto = new CatBoarderCommentDTO(rs.getInt(1), rs.getString(2), rs.getDate(3),
    					rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getInt(8));
    		}
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
       
    	return dto;
    }
    
    //전체정보
    public List<CatBoarderCommentDTO> selectAll(Map<String, Object> map){
    	List<CatBoarderCommentDTO> CatBoarderComments = new Vector<CatBoarderCommentDTO>();
    	try{
    		String sql = "";
    		sql += "SELECT * FROM ( "
    				+ "SELECT Tb.* , rownum rNum FROM ( "
    				+ "SELECT * FROM CatBoarderComment ";
    		if(map.get("COLUMN") != null){
    			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
    		}
    		sql += " ORDER BY cbc_index DESC) Tb "
    				+ ") WHERE rNum BETWEEN ? AND ? ";
          
    		psmt=conn.prepareStatement(sql);
    		psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
    		psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
          
    		rs = psmt.executeQuery();
    		while(rs.next()){
    			CatBoarderCommentDTO dto = new CatBoarderCommentDTO(rs.getInt(1), rs.getString(2), rs.getDate(3),
    					rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getInt(8));

    			CatBoarderComments.add(dto);
    		}
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
       
    	return CatBoarderComments;
    }
}
