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

public class ContractDAO {
   private Connection conn;
   private ResultSet rs;
   private PreparedStatement psmt;
   
   //기본생성자
   public ContractDAO(){
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
    // QnA 총 갯수 가져오기(검색가능)
    public int getTotalContract(Map<String, Object> map){
       int totalContract = 0;
       try{
          String sql = "SELECT count(*) FROM Contract";
          
          // 검색단어가 있을 경우 검색조건을 쿼리에 추가
          if(map.get("WORD")!=null){
             sql += " where "+ map.get("COLUMN")+" like '%"+ map.get("WORD") +"%' ";
          }
          
          psmt = conn.prepareStatement(sql);
          rs = psmt.executeQuery();
          rs.next();
          totalContract = rs.getInt(1);
       }
       catch(Exception e){
          e.printStackTrace();
       }
       
       return totalContract;
    }
    
    // QnA 입력
    public boolean InsertContract(ContractDTO dto){
       try{
          String sql = "INSERT INTO "
                + " Contract(ct_index, ct_sday, ct_eday, u_id, c_index) "
                + " VALUES (contract_seq.nextval, ?, ?, ?, ?)";
          
          psmt = conn.prepareStatement(sql);
          
          psmt.setDate(1, dto.getCt_sday());
          psmt.setDate(2, dto.getCt_eday());
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
          System.out.println("InsertContract 예외 발생");
          return false;
       }
       // 통과
       return true;
    }
    
    public boolean UpdateContract(ContractDTO dto){
    	try{
    		String sql = " UPDATE contract "
    				+ " SET ct_sday=?, ct_eday=?, c_index=? "
    				+ " WHERE ct_index = ? ";
    		
    		psmt = conn.prepareStatement(sql);
    		psmt.setDate(1, dto.getCt_sday());
    		psmt.setDate(2, dto.getCt_eday());
    		psmt.setInt(3, dto.getC_index());
    		psmt.setInt(4, dto.getCt_index());
    		
    		rs = psmt.executeQuery();
    		rs.next();
    		
    		// 없으면 false
    		if(rs.getInt(1)==0) return false;
    	}
    	catch(Exception e){
    		// 에러나도 false
    		e.printStackTrace();
    		System.out.println("UpdateContract 예외 발생");
    		return false;
    	}
    	// 통과
    	return true;
    }
    
    // Contract 게시판 삭제
    public boolean DeleteContract(int ct_index){
       try{
          String sql = " delete from Contract WHERE ct_index=? ";
          
          psmt = conn.prepareStatement(sql);
          
          psmt.setInt(1, ct_index);
          
          rs = psmt.executeQuery();
          rs.next();
          
         // 입력이 없으면
         if(rs.getInt(1)==0) return false;
       }
       catch(Exception e){
          // 에러나도 false
          e.printStackTrace();
          System.out.println("DeleteContract 예외 발생");
          return false;
       }
       // 통과
       return true;
    } 
     
    // QnA 게시판 상세보기
    public ContractDTO selectOne(int ct_index){
    	ContractDTO dto = null;
       try{
          String sql = "SELECT * FROM contract WHERE q_index=?";
          psmt = conn.prepareStatement(sql);
          psmt.setInt(1, ct_index);
          
          rs = psmt.executeQuery();
          if(rs.next()){
             dto = new ContractDTO();
             dto.setCt_index(rs.getInt(1));
             dto.setCt_sday(rs.getDate(2));  
             dto.setCt_eday(rs.getDate(3));
             dto.setCt_date(rs.getDate(4));
             dto.setU_id(rs.getString(5));
             dto.setC_index(rs.getInt(6));
             }
          }
          catch(Exception e){
             e.printStackTrace();
             System.out.println("selectOne 예외 발생");
          }
       
          return dto;
    }
    
    public List<ContractDTO> selectAll(Map<String, Object> map){
       List<ContractDTO> contract = new Vector<ContractDTO>();
       try{
         String sql = "";
         sql += "SELECT * FROM ( "
            + "SELECT Tb.* , rownum rNum FROM ( "
               + "SELECT * FROM contract ";
            if(map.get("COLUMN") != null){
               sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
            }
            sql += " ORDER BY ct_index DESC) Tb "
         + ") WHERE rNum BETWEEN ? AND ? ";
          
          psmt=conn.prepareStatement(sql);
          psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
          psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
          
          rs = psmt.executeQuery();
          while(rs.next()){
    	  ContractDTO dto = new ContractDTO();
           
    	  dto.setCt_index(rs.getInt(1));
          dto.setCt_sday(rs.getDate(2));  
          dto.setCt_eday(rs.getDate(3));
          dto.setCt_date(rs.getDate(4));
          dto.setU_id(rs.getString(5));
          dto.setC_index(rs.getInt(6)); 
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