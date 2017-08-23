package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class CatBoarderCommentDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public CatBoarderCommentDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// 총수
	public int getTotalCatBoarderCommentCount() {
		String sql = "SELECT count(*) FROM CatBoarderComment";
		return template.queryForObject(sql, Integer.class);
	}

	// 입력
	public int InsertCatBoarderComment(final CatBoarderCommentDTO dto) {
		String sql = "INSERT INTO "
				+ " CatBoarderComment (cbc_index, cbc_content, cbc_date, cbc_group, cbc_step, cbc_depth, u_id, cb_index) "
				+ " VALUES (CatBoarderComment_seq.nextval, ?, ?, CatBoarderComment_seq.currval, 0, 0, ?, ?)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getCbc_content());
				psmt.setDate(2, dto.getCbc_date());
				psmt.setString(3, dto.getU_id());
				psmt.setInt(4, dto.getCb_index());
			}
		});
	}

	// 삭제
	public int DeleteCatBoarderComment(int cbc_index) {
		String sql = " DELETE FROM CatBoarderComment WHERE cbc_index= " + cbc_index;

		return template.update(sql);
	}

	// 정보변경
	public int UpdateCatBoarderComment(final CatBoarderCommentDTO dto) {
		String sql = " UPDATE CatBoarderComment " + " SET cbc_content = ?, cbc_date = ? WHERE cbc_index = ? ";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getCbc_content());
				psmt.setDate(2, dto.getCbc_date());
				psmt.setInt(3, dto.getCbc_index());
			}
		});
	}

	// 한개 정보 가져오기
	public CatBoarderCommentDTO selectOne(int cbc_index) {
		String sql = "SELECT * FROM CatBoarderComment WHERE cbc_index=" + cbc_index;
		return (CatBoarderCommentDTO) template.queryForObject(sql,
				new BeanPropertyRowMapper<CatBoarderCommentDTO>(CatBoarderCommentDTO.class));
	}

	// 전체정보
	public List<CatBoarderCommentDTO> selectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM CatBoarderComment ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY cbc_index DESC) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;
		return (List<CatBoarderCommentDTO>) template.query(sql,
				new BeanPropertyRowMapper<CatBoarderCommentDTO>(CatBoarderCommentDTO.class));
	}
}
