package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class FreeBoarderDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public FreeBoarderDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// 자유게시물 총수 가져오기(검색가능)
	public int getTotalFreeBoarderCount(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		String sql = "SELECT count(*) FROM freeboarder";

		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (req.getParameter("searchWord") != null) {
			sql += " where " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}

		return this.template.queryForObject(sql, Integer.class);
	}

	// 내 게시물 총 갯수 가져오기(검색)
	public int getTotalMyFreeBoarderCount(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		String sql = "SELECT count(*) FROM freeboarder WHERE u_id='" + map.get("u_id") + "'";

		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (req.getParameter("searchWord") != null) {
			sql += " AND " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		System.out.println(sql);
		return this.template.queryForObject(sql, Integer.class);
	}

	// 자유게시물 입력
	public int InsertFreeBoarder(final FreeBoarderDTO dto) {

		String sql = "INSERT INTO " + " freeboarder(fb_index, fb_title, fb_content, fb_file, fb_date, fb_like, u_id) "
				+ " VALUES (FREEBOADER_SEQ.nextval, ?, ?, ?, sysdate, 0, ?)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getFb_title());
				psmt.setString(2, dto.getFb_content());
				psmt.setString(3, dto.getFb_file());
				psmt.setString(4, dto.getU_id());

			}
		});

	}

	// 자유게시물 삭제
	public int DeleteFreeBoarder(final int fb_index) {
		String sql = " DELETE FROM freeboarder " + " WHERE fb_index = " + fb_index;
		return template.update(sql);
	}

	// 자유게시물 변경
	public int UpdateFreeBoarder(final FreeBoarderDTO dto) {

		String sql = " UPDATE freeboarder " + " SET fb_title = ?, fb_content = ?, fb_file = ?" + " WHERE fb_index = ? ";

		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				// TODO Auto-generated method stub
				psmt.setString(1, dto.getFb_title());
				psmt.setString(2, dto.getFb_content());
				psmt.setString(3, dto.getFb_file());
				psmt.setInt(4, dto.getFb_index());
			}
		});
	}

	// 좋아요 유저등록
	public void likeUp(int fb_index, String u_id) {
		String sql = " UPDATE freeboarder SET fb_like=fb_like||'@u_" + u_id + "' WHERE fb_index = " + fb_index;

		template.update(sql);
	}

	// 좋아요 유저 삭제
	public void likeRemove(int fb_index, String fb_like) {
		String sql = " UPDATE freeboarder SET fb_like='" + fb_like + "' WHERE fb_index = " + fb_index;

		template.update(sql);
	}

	// 조회수 증가
	public int hitsUp(final int fb_index) {
		String sql = " UPDATE freeboarder " + " SET fb_hits = fb_hits +1 " + " WHERE fb_index = ? ";

		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				// TODO Auto-generated method stub
				psmt.setInt(1, fb_index);
			}
		});
	}

	// 게시물 한개 정보 가져오기
	public FreeBoarderDTO selectOne(int fb_index) {
		hitsUp(fb_index);

		String sql = "SELECT * FROM freeboarder WHERE fb_index = " + fb_index;
		return (FreeBoarderDTO) template.queryForObject(sql,
				new BeanPropertyRowMapper<FreeBoarderDTO>(FreeBoarderDTO.class));
	}

	// 자유게시물 전부가져오기(검색, 페이징)
	public List<FreeBoarderDTO> selectAll(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT freeboarder.*, users.u_nickname FROM "
				+ "freeboarder JOIN users ON freeboarder.u_id = users.u_id ";
		if (req.getParameter("searchWord") != null) {
			sql += " WHERE " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		sql += " ORDER BY fb_index desc ) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

		return (List<FreeBoarderDTO>) template.query(sql,
				new BeanPropertyRowMapper<FreeBoarderDTO>(FreeBoarderDTO.class));
	}
	// 관리자 자유게시물 전부가져오기(검색, 페이징)
		public List<FreeBoarderDTO> adminSelectAll(Map<String, Object> map) {
			HttpServletRequest req = (HttpServletRequest) map.get("req");
			int start = Integer.parseInt(map.get("start").toString());
			int end = Integer.parseInt(map.get("end").toString());
			String order = map.get("order") != null ? map.get("order").toString() : "fb_index";
			if (Integer.parseInt(map.get("sort").toString()) % 2 == 1) {
				order += " desc ";
			} else {
				order += " asc ";
			}
			
			
			String sql = "";
			sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT freeboarder.*, users.u_nickname FROM "
					+ "freeboarder JOIN users ON freeboarder.u_id = users.u_id ";
			if (req.getParameter("searchWord") != null) {
				sql += " WHERE " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
			}
			sql += " ORDER BY freeboarder."+ order +" ) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

			return (List<FreeBoarderDTO>) template.query(sql,
					new BeanPropertyRowMapper<FreeBoarderDTO>(FreeBoarderDTO.class));
		}

	// 조회순으로 가져오기
	public List<FreeBoarderDTO> selectHotRecord(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM freeboarder ";
		sql += " ORDER BY fb_hits DESC) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

		return (List<FreeBoarderDTO>) template.query(sql,
				new BeanPropertyRowMapper<FreeBoarderDTO>(FreeBoarderDTO.class));
	}

	// 내가 쓴글 가져오기
	public List<FreeBoarderDTO> mySelectAll(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT freeboarder.*, users.u_nickname FROM "
				+ "freeboarder JOIN users ON freeboarder.u_id = users.u_id WHERE freeboarder.u_id = '"
				+ map.get("u_id").toString() + "' ";
		if (req.getParameter("searchWord") != null) {
			sql += " AND  " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		sql += " ORDER BY fb_index DESC ) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

		return (List<FreeBoarderDTO>) template.query(sql,
				new BeanPropertyRowMapper<FreeBoarderDTO>(FreeBoarderDTO.class));
	}
}
