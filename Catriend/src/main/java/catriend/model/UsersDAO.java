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

public class UsersDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
	
	//기본생성자
	public UsersDAO(){
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
    //유저 총수 가져오기(검색가능)
    public int getTotalUserCount(Map<String, Object> map){
 	   int totalUsers = 0;
 	   try{
 		   String sql = "SELECT count(*) FROM users";
 		   
 		   // 검색단어가 있을 경우 검색조건을 쿼리에 추가
 		   if(map.get("WORD")!=null){
 			   sql += " where "+ map.get("COLUMN")+" like '%"+ map.get("WORD") +"%' ";
 		   }
 		   
 		   psmt = conn.prepareStatement(sql);
 		   rs = psmt.executeQuery();
 		   rs.next();
 		  totalUsers = rs.getInt(1);
 	   }
 	   catch(Exception e){
 		   e.printStackTrace();
 	   }
 	   
 	   return totalUsers;
    }
    
    //유저 입력
    public boolean InsertUser(UsersDTO dto){
    	try{
    		String sql = "INSERT INTO "
    				+ " users (u_id, u_pw, u_name, u_birthday, u_phonenumber, u_address, "
    				+ " u_email, u_grade, u_nickname) "
    				+ " VALUES (users_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
    		
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, dto.getU_pw());
    		psmt.setString(2, dto.getU_name());
    		psmt.setDate(3, dto.getU_birthday());
    		psmt.setString(4, dto.getU_phonenumber());
    		psmt.setString(5, dto.getU_address());
    		psmt.setString(6, dto.getU_email());
    		psmt.setInt(7, dto.getU_grade());
    		psmt.setString(8, dto.getU_nickname());
    		
    		rs = psmt.executeQuery();
    		rs.next();
    		
    		//입력실패 체크
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("Insert문 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    //유저 비활성화
    public boolean DeleteUser(UsersDTO dto){
    	try{
    		String sql = "Update users "
    				+ " SET u_state = 0 "
    				+ " WHERE u_id = ? ";
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, dto.getU_id());
    		rs = psmt.executeQuery();
    		rs.next();
    		
			// 1명도 없으면 false
			if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("Delete문 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    
  //회원 정보변경 크게
    public boolean UpdateUsers(UsersDTO dto){
    	try{
    		String sql = " UPDATE users "
    				+ " SET u_pw = ?, u_phonenumber = ?, u_address = ? "
    				+ " u_email = ?, u_grade = ?, u_nickname = ? "
    				+ " WHERE u_id = ? ";
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, dto.getU_pw());
    		psmt.setString(2, dto.getU_phonenumber());
    		psmt.setString(3, dto.getU_address());
    		psmt.setString(4, dto.getU_email());
    		psmt.setInt(5, dto.getU_grade());
    		psmt.setString(6, dto.getU_nickname());
    		
    		psmt.setString(7, dto.getU_id());
    		rs = psmt.executeQuery();
    		rs.next();
    		
    		// 1마리도 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("update문 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    } 
    
    //유저 정보가져오기
    public UsersDTO selectOne(String u_id){
    	UsersDTO dto = null;
    	try{
    		String sql = "SELECT * FROM users WHERE u_id=?";
    		psmt = conn.prepareStatement(sql);
    		psmt.setString(1, u_id);
 		   
    		rs = psmt.executeQuery();
    		if(rs.next()){
    			dto = new UsersDTO();
 			   	dto.setU_id(rs.getString(1));
 			   	dto.setU_pw(rs.getString(2));
 			   	dto.setU_name(rs.getString(3));
 			   	dto.setU_birthday(rs.getDate(4));
 			   	dto.setU_phonenumber(rs.getString(5));
 			   	dto.setU_address(rs.getString(6));
 			   	dto.setU_email(rs.getString(7));
 			   	dto.setU_grade(rs.getInt(8));
 			   	dto.setU_nickname(rs.getString(9));
 			   	dto.setU_state(rs.getInt(10));
 			   	dto.setC_index(rs.getInt(11));
 		   	}
 	   	}
 	   	catch(Exception e){
 	   		e.printStackTrace();
 	   	}
 	   
 	   	return dto;
    }
    
    //유저 전부가져오기(검색가능)
    public List<UsersDTO> selectAll(Map<String, Object> map){
  	   List<UsersDTO> users = new Vector<UsersDTO>();
  	   try{
  		  String sql = "";
 			sql += "SELECT * FROM ( "
 				+ "SELECT Tb.* , rownum rNum FROM ( "
 					+ "SELECT * FROM users ";
 				if(map.get("COLUMN") != null){
 					sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
 				}
 				sql += " ) Tb "
 			+ ") WHERE rNum BETWEEN ? AND ? ";
  		   
  		   psmt=conn.prepareStatement(sql);
  		   psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
  		   psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
  		   
  		   rs = psmt.executeQuery();
  		   while(rs.next()){
  			   	UsersDTO dto = new UsersDTO(); 
				dto.setU_id(rs.getString(1));
				dto.setU_pw(rs.getString(2));
				dto.setU_name(rs.getString(3));
				dto.setU_birthday(rs.getDate(4));
				dto.setU_phonenumber(rs.getString(5));
				dto.setU_address(rs.getString(6));
				dto.setU_email(rs.getString(7));
				dto.setU_grade(rs.getInt(8));
				dto.setU_nickname(rs.getString(9));
				dto.setU_state(rs.getInt(10));
				dto.setC_index(rs.getInt(11));
  			   
				users.add(dto);
  		   }
  	   }
  	   catch(Exception e){
  		   e.printStackTrace();
  	   }
  	   
  	   return users;
     }
}
