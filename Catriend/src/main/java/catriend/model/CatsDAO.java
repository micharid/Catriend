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
		String sql = " SELECT count(*) FROM cats ";
		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " where " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}

	// 고양이 입력
	public int InsertCat(final CatsDTO dto) {
		String sql = "INSERT INTO " + " cats(c_index, c_name, c_birthday, c_gender, "
				+ " c_type, c_keyword, c_grade, c_comeday, c_detail) "
				+ " VALUES (cats_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate,?)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getC_name());
				psmt.setDate(2, dto.getC_birthday());
				psmt.setString(3, dto.getC_gender());
				psmt.setString(5, dto.getC_type());
				psmt.setString(6, dto.getC_keyword());
				psmt.setInt(7, dto.getC_grade());
				psmt.setString(8, dto.getC_detail());
			}
		});
	}

	// 고양이 비활성화
	public int DeleteCat(final CatsDTO dto) {
		String sql = " Update cats " + " SET c_state = 0" + "WHERE c_index = ?";
		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, dto.getC_index());
			}
		});
	}

	// 고양이 정보변경
	public int UpdateCat(final CatsDTO dto) {
		String sql = " UPDATE cats " + " SET c_keyword=?, c_health=?, c_grade=?, c_sday=?, c_eday=? "
				+ " WHERE c_index = ? ";
		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setInt(1, dto.getC_index());
				psmt.setString(2, dto.getC_health());
				psmt.setInt(2, dto.getC_grade());
				psmt.setDate(2, dto.getC_sday());
				psmt.setDate(2, dto.getC_eday());
			}
		});
	}

	// 고양이 한마리 정보 가져오기
	public CatsDTO selectOne(int c_id) {
		String sql = "SELECT * FROM cats WHERE c_index=" + c_id;
		return (CatsDTO) template.queryForObject(sql, new BeanPropertyRowMapper<CatsDTO>(CatsDTO.class));
	}

	// 전체리스트
	public List<CatsDTO> selectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM cats ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY c_type asc) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;
		return (List<CatsDTO>) template.query(sql, new BeanPropertyRowMapper<CatsDTO>(CatsDTO.class));
	}
	
	// 고양이 분류리스트
	public List<CatsDTO> selectAllKeyword(Map<String, Object> map) {
		int keyCount;
		if(map.get("keyCount") != null){
			keyCount = Integer.parseInt(map.get("keyCount").toString());
		}
		else{
			keyCount = 0;
		}
		String sql = "SELECT * FROM cats ";
		if(keyCount!=0){
			sql += " WHERE ";
			for(int i=0; i<keyCount; i++){
				if(i==0){
				sql += "c_keyword like '%"+map.get("str"+i)+"%'";
				}
				else{
				sql += " OR c_keyword like '%"+map.get("str"+i)+"%'";
				}
			}
		}
		sql += " ORDER BY c_type asc";
		return (List<CatsDTO>) template.query(sql, new BeanPropertyRowMapper<CatsDTO>(CatsDTO.class));
	}
}
