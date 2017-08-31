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
				+ " VALUES (freeboardercomment_seq.nextval, ?, sysdate, freeboardercomment_seq.currval, 0, 0, ?, ?)";

		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getFbc_content());
				psmt.setString(2, dto.getU_id());
				psmt.setInt(3, dto.getFb_index());
			}
		});

	}

	// 답변글 입력전 레코드 일괄 업데이트
	public void replyPrevUpdate(final int fbc_group, final int fbc_step) {
		String query = " UPDATE freeboardercomment " + " SET fbc_step = fbc_step+1 "
				+ " WHERE fbc_group = ? and fbc_step > ? ";
		this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, fbc_group);
				psmt.setInt(2, fbc_step);
			}
		});
	}

	public int ReplyFreeBoarderComment(final FreeBoarderCommentDTO dto) {
		// 답변글쓰기전 레코드 업데이트
		replyPrevUpdate(dto.getFbc_group(), dto.getFbc_step());

		// 답변글 입력
		String query = " INSERT INTO freeboardercomment "
				+ " (fbc_index, fbc_content, fbc_date, fbc_group, fbc_step, fbc_depth, u_id, fb_index) "
				+ " VALUES (freeboardercomment_seq.nextval, ?, sysdate, ?, ?, ?, ? ,?) ";
		return this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getFbc_content());
				psmt.setInt(2, dto.getFbc_group());
				psmt.setInt(3, dto.getFbc_step() + 1);
				psmt.setInt(4, dto.getFbc_depth() + 1);
				psmt.setString(5, dto.getU_id());
				psmt.setInt(6, dto.getFb_index());
			}
		});
	}

	// 삭제
	public int DeleteFreeBoarderComment(int fbc_index) {

		String sql = " DELETE FROM freeboardercomment WHERE fbc_index=" + fbc_index +" OR fbc_group= "+fbc_index;

		return this.template.update(sql);
	}

	// 정보변경
	public int UpdateFreeBoarderComment(final FreeBoarderCommentDTO dto) {

		String sql = " UPDATE freeboardercomment SET fbc_content = ?, fbc_date = sysdate WHERE fbc_index = ? ";

		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getFbc_content());
				psmt.setInt(2, dto.getFbc_index());
			}
		});
	}

	// 한개 정보 가져오기
	public FreeBoarderCommentDTO selectOne(int fbc_index) {
		String sql = "SELECT * FROM freeboardercomment WHERE fbc_index=" + fbc_index;
		return (FreeBoarderCommentDTO) template.queryForObject(sql,
				new BeanPropertyRowMapper<FreeBoarderCommentDTO>(FreeBoarderCommentDTO.class));
	}

	// 전체정보
	public List<FreeBoarderCommentDTO> selectAll(Map<String, Object> map) {
		int fb_index = Integer.parseInt(map.get("fb_index").toString());
		String sql = " SELECT * FROM freeboardercomment "+ " WHERE fb_index = " + fb_index + " ORDER BY fbc_group DESC, fbc_step ASC ";
		return (List<FreeBoarderCommentDTO>) template.query(sql,
				new BeanPropertyRowMapper<FreeBoarderCommentDTO>(FreeBoarderCommentDTO.class));
	}
}