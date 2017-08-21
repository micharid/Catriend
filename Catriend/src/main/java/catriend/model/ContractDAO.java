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
    public boolean InsertQnaQ(QnaDTO dto){
       try{
          String sql = "INSERT INTO "
                + " Contract(ct_index, ct_sday, ct_eday, u_id, c_index) "
                + " VALUES (contract_seq.nextval, ?, ?, ?, ?)";
          
          psmt = conn.prepareStatement(sql);
          
          psmt.setString(2, dto.getQ_content());
          psmt.setString(3, dto.getU_id());
          psmt.setString(3, dto.getU_id());
          
          rs = psmt.executeQuery();
          rs.next();
          
          // 입력이 없으면
          if(rs.getInt(1)==0) return false;
       }
       catch(Exception e){
          // 에러나도 false
          e.printStackTrace();
          System.out.println("InsertQnaQ 예외 발생");
          return false;
       }
       // 통과
       return true;
    } 
    
    // QnA 게시판 삭제
    public boolean DeleteQna(int q_index){
       try{
          String sql = " delete from qna WHERE q_index=? ";
          
          psmt = conn.prepareStatement(sql);
          
          psmt.setInt(1, q_index);
          
          rs = psmt.executeQuery();
          rs.next();
          
         // 입력이 없으면
         if(rs.getInt(1)==0) return false;
       }
       catch(Exception e){
          // 에러나도 false
          e.printStackTrace();
          System.out.println("DeleteQna 예외 발생");
          return false;
       }
       // 통과
       return true;
    } 
     
    // QnA 게시판 상세보기
    public QnaDTO selectOne(int q_index){
    	QnaDTO dto = null;
       try{
          String sql = "SELECT * FROM qna WHERE q_index=?";
          psmt = conn.prepareStatement(sql);
          psmt.setInt(1, q_index);
          
          rs = psmt.executeQuery();
          if(rs.next()){
             dto = new QnaDTO();
                dto.setQ_index(rs.getInt(1));
                dto.setQ_title(rs.getString(2));
                dto.setQ_content(rs.getString(3));
                dto.setQ_date(rs.getDate(4));
                dto.setQ_answer(rs.getString(5));
                dto.setQ_a_result(rs.getInt(6));
                dto.setU_id(rs.getString(7));
                
             }
          }
          catch(Exception e){
             e.printStackTrace();
             System.out.println("selectOne 예외 발생");
          }
       
          return dto;
    }
    
    public List<QnaDTO> selectAll(Map<String, Object> map){
       List<QnaDTO> qna = new Vector<QnaDTO>();
       try{
         String sql = "";
         sql += "SELECT * FROM ( "
            + "SELECT Tb.* , rownum rNum FROM ( "
               + "SELECT * FROM qna ";
            if(map.get("COLUMN") != null){
               sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
            }
            sql += " ORDER BY q_index DESC) Tb "
         + ") WHERE rNum BETWEEN ? AND ? ";
          
          psmt=conn.prepareStatement(sql);
          psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
          psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
          
          rs = psmt.executeQuery();
          while(rs.next()){
        	QnaDTO dto = new QnaDTO();
        	
			dto.setQ_index(rs.getInt(1));
			dto.setQ_title(rs.getString(2));
			dto.setQ_content(rs.getString(3));
			dto.setQ_date(rs.getDate(4));
			dto.setQ_answer(rs.getString(5));
			dto.setQ_a_result(rs.getInt(6));
			dto.setU_id(rs.getString(7));        
			qna.add(dto);
          }
       }
       catch(Exception e){
          e.printStackTrace();
          System.out.println("selectAll 예외 발생");
       }
       
       return qna;
    }
}