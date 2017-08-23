package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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

		String sql = "SELECT count(*) FROM freeboarder";

		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " where " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}

		return this.template.queryForObject(sql, Integer.class);
	}

	// 자유게시물 입력
	public int InsertFreeBoarder(final FreeBoarderDTO dto) {

		String sql = "INSERT INTO " + " freeboarder(fb_index, fb_title, fb_file, fb_date, " + " fb_likecount, u_id) "
				+ " VALUES (freeboarder_seq.nextval, ?, ?, sysdate, ?, ?)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getFb_title());
				psmt.setString(2, dto.getFb_file());
				psmt.setDate(3, dto.getFb_date());
				psmt.setInt(4, dto.getFb_likecount());

			}
		});

	}

	// 자유게시물 삭제
	public int DeleteFreeBoarder(final int fb_index) {
		String sql = " DELETE FROM freeboarder " + " WHERE fb_index = " + fb_index;
		return template.update(sql);
	}

	// 자유게시물 변경
	public int UpdateCat(final FreeBoarderDTO dto) {

		String sql = " UPDATE freeboarder " + " SET fb_title = ?, fb_content = ?, fb_file = ?, fb_date = ? "
				+ " WHERE fb_index = ? ";

		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				// TODO Auto-generated method stub
				psmt.setString(1, dto.getFb_title());
				psmt.setString(2, dto.getFb_content());
				psmt.setString(3, dto.getFb_file());
				psmt.setDate(4, dto.getFb_date());
				psmt.setInt(5, dto.getFb_index());
			}
		});
	}

	// 게시물 한개 정보 가져오기
	public FreeBoarderDTO selectOne(int fb_index) {

		String sql = "SELECT * FROM freeboarder WHERE fb_index = " + fb_index;
		return (FreeBoarderDTO) template.queryForObject(sql,
				new BeanPropertyRowMapper<FreeBoarderDTO>(FreeBoarderDTO.class));
	}

	// 자유게시물 전부가져오기(검색, 페이징)
	public List<FreeBoarderDTO> selectAll(Map<String, Object> map) {

		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM freeboarder ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY fb_index DESC ) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;

		return (List<FreeBoarderDTO>) template.query(sql,
				new BeanPropertyRowMapper<FreeBoarderDTO>(FreeBoarderDTO.class));
	}
}
