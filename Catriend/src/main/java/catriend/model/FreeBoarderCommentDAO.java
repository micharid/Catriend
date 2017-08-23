package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class FreeBoarderCommentDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public FreeBoarderCommentDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// 총수
	public int getTotalFreeBoarderCommentCount() {

		String sql = "SELECT count(*) FROM freeboardercomment";

		return template.queryForObject(sql, Integer.class);

	}

	// 입력
	public int InsertFreeBoarderComment(final FreeBoarderCommentDTO dto) {

		String sql = "INSERT INTO "
				+ " freeboardercomment (fbc_index, fbc_content, fbc_date, fbc_group, fbc_step, fbc_depth, u_id, fb_index) "
				+ " VALUES (freeboardercomment_seq.nextval, ?, ?, freeboardercomment_seq.currval, 0, 0, ?, ?)";

		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getFbc_content());
				psmt.setDate(2, dto.getFbc_date());
				psmt.setString(3, dto.getU_id());
				psmt.setInt(4, dto.getFb_index());

			}
		});

	}

	// 삭제
	public int DeleteFreeBoarderComment(int fbc_index) {

		String sql = " DELETE FROM freeboardercomment WHERE fbc_index=" + fbc_index;

		return this.template.update(sql);
	}

	// 정보변경
	public int UpdateFreeBoarderComment(final FreeBoarderCommentDTO dto) {

		String sql = " UPDATE freeboardercomment " + " SET fbc_content = ?, fbc_date = ? WHERE fbc_index = ? ";

		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getFbc_content());
				psmt.setDate(2, dto.getFbc_date());
				psmt.setInt(3, dto.getFbc_index());

			}
		});
	}

	// 한개 정보 가져오기
	public FreeBoarderCommentDTO selectOne(int fbc_index) {
		String sql = "SELECT * FROM cats WHERE c_index=" + fbc_index;
		return (FreeBoarderCommentDTO) template.queryForObject(sql,
				new BeanPropertyRowMapper<FreeBoarderCommentDTO>(FreeBoarderCommentDTO.class));
	}

	// 전체정보
	public List<FreeBoarderCommentDTO> selectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM cats ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY c_type asc) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;
		return (List<FreeBoarderCommentDTO>) template.query(sql,
				new BeanPropertyRowMapper<FreeBoarderCommentDTO>(FreeBoarderCommentDTO.class));
	}
}
