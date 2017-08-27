package catriend.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class CatHistoryDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public CatHistoryDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// CatHistory 총 갯수 가져오기(검색가능)
	public int getTotalCatHistory(Map<String, Object> map) {
		String sql = "SELECT count(*) FROM CatHistory";

		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " where " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}

	// 입력
	public int InsertCatHistory(final CatHistoryDTO dto) {
		String sql = "INSERT INTO " + " CatHistory(ch_index, ch_catio, ch_date, u_id, c_index) "
				+ " VALUES (catHistory_seq.nextval, ?, ?, ?, ?)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, dto.getCh_catio());
				psmt.setDate(2, dto.getCh_date());
				psmt.setString(3, dto.getU_id());
				psmt.setInt(4, dto.getC_index());

			}
		});
	}

	// 입력
	public int DeleteCatHistory(final int ch_index) {
		String sql = " DELETE FROM CatHistory "
				+ " WHERE ch_index = "+ch_index;
		return template.update(sql);
	}

	public int UpdateCatHistory(final CatHistoryDTO dto) {
		String sql = " UPDATE CatHistory " + " SET ch_catio=?, ch_date=?, u_id=?, c_index=? " + " WHERE ch_index = ? ";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, dto.getCh_catio());
				psmt.setDate(2, dto.getCh_date());
				psmt.setString(3, dto.getU_id());
				psmt.setInt(4, dto.getC_index());
				psmt.setInt(5, dto.getCh_index());

			}
		});
	}

	// CatHistory 게시판 상세보기
	public CatHistoryDTO selectOne(int ch_index) {
		String sql = "SELECT * FROM CatHistory WHERE ch_index=" + ch_index;
		return (CatHistoryDTO) template.queryForObject(sql,
				new BeanPropertyRowMapper<CatHistoryDTO>(CatHistoryDTO.class));
	}

	public List<CatHistoryDTO> selectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM CatHistory ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY ch_index DESC) Tb " + ") WHERE rNum BETWEEN ? AND ? ";
		return (List<CatHistoryDTO>) template.query(sql, new BeanPropertyRowMapper<CatHistoryDTO>(CatHistoryDTO.class));
	}
}
