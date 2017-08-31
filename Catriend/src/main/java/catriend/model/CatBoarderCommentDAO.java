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
				+ " VALUES (CatBoarderComment_seq.nextval, ?, sysdate, CatBoarderComment_seq.currval, 0, 0, ?, ?)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getCbc_content());
				psmt.setString(2, dto.getU_id());
				psmt.setInt(3, dto.getCb_index());
			}
		});
	}

	// 답변글 입력전 레코드 일괄 업데이트
	public void replyPrevUpdate(final int cbc_group, final int cbc_step) {
		String query = " UPDATE CatBoarderComment " + " SET cbc_step = cbc_step+1 "
				+ " WHERE cbc_group = ? and cbc_step > ? ";
		this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, cbc_group);
				psmt.setInt(2, cbc_step);
			}
		});
	}

	public int ReplyCatBoarderComment(final CatBoarderCommentDTO dto) {
		// 답변글쓰기전 레코드 업데이트
		replyPrevUpdate(dto.getCbc_group(), dto.getCbc_step());

		// 답변글 입력
		String query = " INSERT INTO CatBoarderComment "
				+ " (cbc_index, cbc_content, cbc_date, cbc_group, cbc_step, cbc_depth, u_id, cb_index) "
				+ " VALUES (catboardercomment_seq.nextval, ?, sysdate, ?, ?, ?, ? ,?) ";
		return this.template.update(query, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getCbc_content());
				psmt.setInt(2, dto.getCbc_group());
				psmt.setInt(3, dto.getCbc_step() + 1);
				psmt.setInt(4, dto.getCbc_depth() + 1);
				psmt.setString(5, dto.getU_id());
				psmt.setInt(6, dto.getCb_index());
			}
		});
	}

	// 삭제
	public int DeleteCatBoarderComment(int cbc_index) {
		String sql = " DELETE FROM CatBoarderComment WHERE cbc_index= " + cbc_index +" OR cbc_group="+cbc_index;

		return template.update(sql);
	}

	// 정보변경
	public int UpdateCatBoarderComment(final CatBoarderCommentDTO dto) {
		String sql = " UPDATE CatBoarderComment SET cbc_content = ?, cbc_date = sysdate WHERE cbc_index = ? ";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getCbc_content());
				psmt.setInt(2, dto.getCbc_index());
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
		int cb_index = Integer.parseInt(map.get("cb_index").toString());
		String sql = " SELECT * FROM CatBoarderComment " + " WHERE cb_index = " + cb_index
				+ " ORDER BY cbc_group DESC, cbc_step ASC ";
		return (List<CatBoarderCommentDTO>) template.query(sql,
				new BeanPropertyRowMapper<CatBoarderCommentDTO>(CatBoarderCommentDTO.class));
	}
}
