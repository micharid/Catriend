package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class CatsDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public CatsDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// 고양이 총수 가져오기(검색가능)
	public int getTotalCatsCount(Map<String, Object> map) {
		String sql = " SELECT count(*) FROM cats WHERE c_state = 1 ";
		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " AND " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}

	// 고양이 입력
	public int InsertCat(final CatsDTO dto) {
		String sql = "INSERT INTO " + " cats(c_index, c_name, c_birthday, c_gender, "
				+ " c_type, c_keyword, c_grade, c_comeday) " + " VALUES (cats_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getC_name());
				psmt.setDate(2, dto.getC_birthday());
				psmt.setString(3, dto.getC_gender());
				psmt.setString(4, dto.getC_type());
				psmt.setString(5, dto.getC_keyword());
				psmt.setInt(6, dto.getC_grade());
			}
		});
	}

	// 고양이 비활성화
	public int DeleteCat(final int c_index) {
		String sql = " Update cats " + " SET c_state = 0" + "WHERE c_index = ?";
		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, c_index);
			}
		});
	}

	// 고양이 정보변경
		public int UpdateCat(final CatsDTO dto) {
			String sql = " UPDATE cats "
					+ " SET c_keyword=?, c_health=?, c_grade=?, c_sday=?, c_eday=?, c_detail=?, c_name=?, c_birthday=?, c_gender=?, c_type=? "
					+ " WHERE c_index = ? ";
			return this.template.update(sql, new PreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement psmt) throws SQLException {
					psmt.setString(1, dto.getC_keyword());
					psmt.setString(2, dto.getC_health());
					psmt.setInt(3, dto.getC_grade());
					psmt.setDate(4, dto.getC_sday());
					psmt.setDate(5, dto.getC_eday());
					psmt.setString(6, dto.getC_detail());
					psmt.setString(7, dto.getC_name());
					psmt.setDate(8, dto.getC_birthday());
					psmt.setString(9, dto.getC_gender());
					psmt.setString(10, dto.getC_type());
					
					psmt.setInt(11, dto.getC_index());
				}
			});
		}

	// 고양이 한마리 정보 가져오기
	public CatsDTO selectOne(int c_index) {
		String sql = "SELECT * FROM cats WHERE c_index=" + c_index;
		return (CatsDTO) template.queryForObject(sql, new BeanPropertyRowMapper<CatsDTO>(CatsDTO.class));
	}

	// 전체리스트(기존에 사용하던것 계속사용함)
	public List<CatsDTO> selectAll(Map<String, Object> map) {
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM cats WHERE c_state = 1 ";
		if (map.get("COLUMN") != null) {
			sql += " AND " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY c_type asc) Tb " + ") ";
		if (map.get("u_grade") != null) {
			sql += "WHERE c_grade <= " + Integer.parseInt(map.get("u_grade").toString());
		}
		return (List<CatsDTO>) template.query(sql, new BeanPropertyRowMapper<CatsDTO>(CatsDTO.class));
	}

	// 전체리스트(관리자페이지 리스트 불러오는용도)
	public List<CatsDTO> selectAlladmin(Map<String, Object> map) {
		System.out.println("dao sort : " + map.get("sort").toString());
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String order = map.get("order").toString() != null ? map.get("order").toString() : "c_index";
		if (Integer.parseInt(map.get("sort").toString()) % 2 == 1) {
			order += " desc ";
		} else {
			order += " asc ";
		}

		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM cats WHERE c_state = 1 ";
		if (map.get("COLUMN") != null) {
			sql += " AND " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY " + order + ") Tb " + ") ";
		sql += " WHERE rNum BETWEEN " + start + " AND " + end + " ";
		return (List<CatsDTO>) template.query(sql, new BeanPropertyRowMapper<CatsDTO>(CatsDTO.class));
	}

	// 고양이 분류리스트
	public List<CatsDTO> selectAllKeyword(Map<String, Object> map) {
		int keyCount;
		if (map.get("keyCount") != null) {
			keyCount = Integer.parseInt(map.get("keyCount").toString());
		} else {
			keyCount = 0;
		}
		String sql = "SELECT * FROM cats ";

		if (keyCount != 0) {
			sql += " WHERE ";
			for (int i = 0; i < keyCount; i++) {
				if (i == 0) {
					sql += "c_keyword like '%" + map.get("str" + i) + "%' ";
				} else {
					sql += " OR c_keyword like '%" + map.get("str" + i) + "%' ";
				}
			}
			if (map.get("u_grade") != null) {
				sql += " AND c_grade <= " + Integer.parseInt(map.get("u_grade").toString());
			}
		} else {
			if (map.get("u_grade") != null) {
				sql += " WHERE c_grade <= " + Integer.parseInt(map.get("u_grade").toString());
			}
		}
		sql += " ORDER BY c_type desc";
		return (List<CatsDTO>) template.query(sql, new BeanPropertyRowMapper<CatsDTO>(CatsDTO.class));
	}
}
