package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class QnaDAO {
	JdbcTemplate template;

	// 기본생성자
	public QnaDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// QnA 총 갯수 가져오기(검색가능)
	public int getTotalQna(Map<String, Object> map) {

		String sql = "SELECT count(*) FROM qna";
		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " where " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}

	// 내 게시물 총 갯수 가져오기(검색)
	public int getTotalMygetTotalQna(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		String sql = "SELECT count(*) FROM qna WHERE u_id='" + map.get("u_id") + "'";

		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (req.getParameter("searchWord") != null) {
			sql += " AND " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		System.out.println(sql);
		return this.template.queryForObject(sql, Integer.class);
	}

	// QnA 질문 입력
	public int InsertQnaQ(final QnaDTO dto) {
		String sql = "INSERT INTO " + " qna(q_index, q_title, q_content,u_id ) " + " VALUES (qna_seq.nextval, ?, ?, ?)";

		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getQ_title());
				psmt.setString(2, dto.getQ_content());
				psmt.setString(3, dto.getU_id());
			}
		});
	}

	// QnA 답변 입력
	public int InsertQnaA(final QnaDTO dto) {
		String sql = "INSERT INTO " + " qna(q_index, q_answer, q_a_result) " + " VALUES ( ?, ?, 1)";
		return template.update(sql, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, dto.getQ_index());
				psmt.setString(2, dto.getQ_answer());
			}
		});

	}

	// QnA 게시판 삭제
	public int DeleteQna(int q_index) {

		String sql = " delete from qna WHERE q_index=" + q_index;
		return template.update(sql);

	}

	// QnA 게시판 상세보기
	public QnaDTO selectOne(int q_index) {
		String sql = "SELECT * FROM qna WHERE q_index=" + q_index;
		return template.queryForObject(sql, new BeanPropertyRowMapper<QnaDTO>(QnaDTO.class));
	}

	public List<QnaDTO> selectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM qna ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY q_index DESC) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

		return (List<QnaDTO>) template.query(sql, new BeanPropertyRowMapper<QnaDTO>(QnaDTO.class));
	}

	public List<QnaDTO> myqna(String u_id) {
		String sql = "select * from qna where u_id='" + u_id + "'";
		return (List<QnaDTO>) template.query(sql, new BeanPropertyRowMapper<QnaDTO>(QnaDTO.class));
	}

	// 내가 쓴글 가져오기
	public List<QnaDTO> mySelectAll(Map<String, Object> map) {
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT qna.*, users.u_nickname FROM "
				+ "qna JOIN users ON qna.u_id = users.u_id WHERE qna.u_id = '" + map.get("u_id").toString() + "' ";
		if (req.getParameter("searchWord") != null) {
			sql += " AND  " + req.getParameter("searchColumn") + " like '%" + req.getParameter("searchWord") + "%' ";
		}
		sql += " ORDER BY q_index DESC ) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

		return (List<QnaDTO>) template.query(sql, new BeanPropertyRowMapper<QnaDTO>(QnaDTO.class));
	}
	
	// 질문 답변 업데이트
	public void AnswerQna(final QnaDTO dto) {

		String sql = " UPDATE qna " + " SET q_answer = ?, q_a_result=1"
				+ " WHERE q_index = ? ";

		this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getQ_answer());
				psmt.setInt(2, dto.getQ_index());
			}
		});
	}
}
