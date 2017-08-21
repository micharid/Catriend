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

public class CatBoarderDAO {
   private Connection conn;
   private ResultSet rs;
   private PreparedStatement psmt;
   
   //기본생성자
   public CatBoarderDAO(){
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
    //고양이게시판 총 갯수 가져오기(검색가능)
    public int getTotalCatBoarderCount(Map<String, Object> map){
       int totalCatBoarder = 0;
       try{
          String sql = "SELECT count(*) FROM CatBoarder";
          
          // 검색단어가 있을 경우 검색조건을 쿼리에 추가
          if(map.get("WORD")!=null){
             sql += " where "+ map.get("COLUMN")+" like '%"+ map.get("WORD") +"%' ";
          }
          
          psmt = conn.prepareStatement(sql);
          rs = psmt.executeQuery();
          rs.next();
         totalCatBoarder = rs.getInt(1);
       }
       catch(Exception e){
          e.printStackTrace();
       }
       
       return totalCatBoarder;
    }
    
    //고양이 입력
    public boolean InsertCatBoarder(CatBoarderDTO dto){
       try{
          String sql = "INSERT INTO "
                + " CatBoarder(cb_index, cb_title, cb_content, cb_file, u_id, c_index) "
                + " VALUES (catboarder_seq.nextval, ?, ?, ?, ?, ?)";
          
          psmt = conn.prepareStatement(sql);
          
          psmt.setString(1, dto.getCb_title());
          psmt.setString(2, dto.getCb_content());
          psmt.setString(3, dto.getCb_file());
          psmt.setString(4, dto.getU_id());
          psmt.setInt(5, dto.getC_index());
          
          rs = psmt.executeQuery();
          rs.next();
          
          // 1마리도 없으면 false
          if(rs.getInt(1)==0) return false;
       }
       catch(Exception e){
          // 에러나도 false
          e.printStackTrace();
          System.out.println("InsertCatBoarder 예외 발생");
          return false;
       }
       // 통과
       return true;
    } 
    
    //고양이 게시판 삭제
    public boolean DeleteCatBoarder(int cb_index){
       try{
          String sql = " delete from CatBoarder WHERE cb_index=? ";
          
          psmt = conn.prepareStatement(sql);
          
          psmt.setInt(1, cb_index);
          
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
    public boolean UpdateCatBoarder(CatBoarderDTO dto){
       try{
          String sql = " UPDATE CatBoarder "
                + " SET Cb_title=?, Cb_content=?, Cb_file=? WHERE cb_index = ?";
          psmt = conn.prepareStatement(sql);
          
          psmt.setString(1, dto.getCb_title());
          psmt.setString(2, dto.getCb_content());
          psmt.setString(3, dto.getCb_file());
          psmt.setString(4, dto.getU_id());
          psmt.setInt(5, dto.getCb_index());
          
          rs = psmt.executeQuery();
          rs.next();
          
          // 1마리도 없으면 false
          if(rs.getInt(1)==0) return false;
       }
       catch(Exception e){
          // 에러나도 false
          e.printStackTrace();
          System.out.println("UpdateCatBoarder 예외 발생");
          return false;
       }
       // 통과
       return true;
    }
    
    public boolean CatBoarderLikeUp(int cb_index){
       
       try{
          String sql = "UPDATE CatBoarder SET cb_LikeCount=cb_LikeCount+1";
          
          psmt = conn.prepareStatement(sql);
          
          rs = psmt.executeQuery();
          rs.next();
          
          // 업데이트된게 없을 시 false
          if(rs.getInt(1)==0) return false;
       }
       catch(Exception e){
          // 에러나도 false
          e.printStackTrace();
          System.out.println("CatBoarderLikeUp 예외 발생");
          return false;
       }
       // 통과
       return true;
    }
     
    //고양이 한마리 정보 가져오기
    public CatBoarderDTO selectOne(int cb_index){
       CatBoarderDTO dto = null;
       try{
          String sql = "SELECT * FROM CatBoarder WHERE cb_index=?";
          psmt = conn.prepareStatement(sql);
          psmt.setInt(1, cb_index);
          
          rs = psmt.executeQuery();
          if(rs.next()){
             dto = new CatBoarderDTO();
                dto.setCb_index(rs.getInt(1));
                dto.setCb_title(rs.getString(2));
                dto.setCb_content(rs.getString(3));
                dto.setCb_file(rs.getString(4));
                dto.setCb_date(rs.getDate(5));
                dto.setCb_likecount(rs.getInt(6));
                dto.setU_id(rs.getString(7));
                dto.setC_index(rs.getInt(8));

             }
          }
          catch(Exception e){
             e.printStackTrace();
          }
       
          return dto;
    }
    
    public List<CatBoarderDTO> selectAll(Map<String, Object> map){
       List<CatBoarderDTO> catBoarders = new Vector<CatBoarderDTO>();
       try{
         String sql = "";
         sql += "SELECT * FROM ( "
            + "SELECT Tb.* , rownum rNum FROM ( "
               + "SELECT * FROM catboarder ";
            if(map.get("COLUMN") != null){
               sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
            }
            sql += " ORDER BY cb_index DESC) Tb "
         + ") WHERE rNum BETWEEN ? AND ? ";
          
          psmt=conn.prepareStatement(sql);
          psmt.setInt(1, Integer.parseInt(map.get("start").toString()));
          psmt.setInt(2, Integer.parseInt(map.get("end").toString()));
          
          rs = psmt.executeQuery();
          while(rs.next()){
            CatBoarderDTO dto = new CatBoarderDTO();
           dto.setCb_index(rs.getInt(1));
           dto.setCb_title(rs.getString(2));
           dto.setCb_content(rs.getString(3));
           dto.setCb_file(rs.getString(4));
           dto.setCb_date(rs.getDate(5));
           dto.setCb_likecount(rs.getInt(6));
           dto.setU_id(rs.getString(7));
           dto.setC_index(rs.getInt(8));
             
           catBoarders.add(dto);
          }
       }
       catch(Exception e){
          e.printStackTrace();
       }
       
       return catBoarders;
    }
}