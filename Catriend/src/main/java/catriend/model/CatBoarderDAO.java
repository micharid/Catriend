package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class CatBoarderDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public CatBoarderDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// 고양이게시판 총 갯수 가져오기(검색가능)
	public int getTotalCatBoarderCount(Map<String, Object> map) {
		String sql = "SELECT count(*) FROM catboarder";

		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		if (req.getParameter("searchWord") != null) {
			sql += " WHERE " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}

	// 내 게시물 총 갯수 가져오기(검색)
	public int getTotalMyCatBoarderCount(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		String sql = "SELECT count(*) FROM catboarder WHERE u_id='" + map.get("u_id") + "'";

		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (req.getParameter("searchWord") != null) {
			sql += " AND " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		System.out.println(sql);
		return this.template.queryForObject(sql, Integer.class);
	}

	// 입력
	public int InsertCatBoarder(final CatBoarderDTO dto) {
		String sql = "INSERT INTO " + " catboarder(cb_index, cb_title, cb_content, cb_file, u_id, c_index) "
				+ " VALUES (catboarder_seq.nextval, ?, ?, ?, ?, ?)";

		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getCb_title());
				psmt.setString(2, dto.getCb_content());
				psmt.setString(3, dto.getCb_file());
				psmt.setString(4, dto.getU_id());
				psmt.setInt(5, dto.getC_index());
			}
		});
	}

	// 고양이게시판 삭제
	public int DeleteCatBoarder(int cb_index) {
		String sql = " delete from catboarder WHERE cb_index= " + cb_index;
		return template.update(sql);
	}

	// 정보변경
	public int UpdateCatBoarder(final CatBoarderDTO dto) {
		String sql = " UPDATE catboarder SET Cb_title=?, Cb_content=?, Cb_file=? WHERE cb_index = ? AND u_id = ?";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				System.out.println("DAO메소드 : " + dto.getCb_file());
				psmt.setString(1, dto.getCb_title());
				psmt.setString(2, dto.getCb_content());
				psmt.setString(3, dto.getCb_file());
				psmt.setInt(4, dto.getCb_index());
				psmt.setString(5, dto.getU_id());
			}
		});
	}

	//좋아요 유저등록
	public void likeUp(int cb_index, String u_id) {
		String sql = " UPDATE catboarder SET cb_like=cb_like||'@u_" + u_id + "' WHERE cb_index = " + cb_index;

		template.update(sql);
	}

	// 좋아요 유저 삭제
	public void likeRemove(int cb_index, String cb_like) {
		String sql = " UPDATE catboarder SET cb_like='" + cb_like + "' WHERE cb_index = " + cb_index;

		template.update(sql);
	}

	// 조회수 증가
	public int hitsUp(final int cb_index) {
		String sql = " UPDATE catboarder " + " SET cb_hits = cb_hits +1 " + " WHERE cb_index = ? ";

		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				// TODO Auto-generated method stub
				psmt.setInt(1, cb_index);
			}
		});
	}

	// 고양이 한마리 정보 가져오기
	public CatBoarderDTO selectOne(int cb_index) {
		hitsUp(cb_index);
		String sql = "SELECT * FROM catboarder WHERE cb_index=" + cb_index;
		return (CatBoarderDTO) template.queryForObject(sql,
				new BeanPropertyRowMapper<CatBoarderDTO>(CatBoarderDTO.class));
	}

	public List<CatBoarderDTO> selectAll(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		System.out.println("dao 메소드 검색 : " + req.getParameter("searchWord"));
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM catboarder ";
		if (req.getParameter("searchWord") != null) {
			sql += " WHERE " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		sql += " ORDER BY cb_index DESC) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;
		return (List<CatBoarderDTO>) template.query(sql, new BeanPropertyRowMapper<CatBoarderDTO>(CatBoarderDTO.class));
	}

	public List<CatBoarderDTO> selectHotRecord(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM catboarder ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY cb_hits DESC) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;
		return (List<CatBoarderDTO>) template.query(sql, new BeanPropertyRowMapper<CatBoarderDTO>(CatBoarderDTO.class));
	}

	// 내가 쓴글 가져오기
	public List<CatBoarderDTO> mySelectAll(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT catboarder.*, users.u_nickname FROM "
				+ "catboarder JOIN users ON catboarder.u_id = users.u_id WHERE catboarder.u_id = '"
				+ map.get("u_id").toString() + "' ";
		if (req.getParameter("searchWord") != null) {
			sql += " AND  " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		sql += " ORDER BY cb_index DESC ) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

		return (List<CatBoarderDTO>) template.query(sql, new BeanPropertyRowMapper<CatBoarderDTO>(CatBoarderDTO.class));
	}
}