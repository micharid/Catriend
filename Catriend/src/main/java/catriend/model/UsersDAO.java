package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class UsersDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public UsersDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// 유저 총수 가져오기(검색가능)
	public int getTotalUserCount(Map<String, Object> map) {
		String sql = "SELECT count(*) FROM users";
		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " where " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}

	// 유저 입력
	public int InsertUser(final UsersDTO dto) {
		String sql = "INSERT INTO " + " users (u_id, u_pw, u_name, u_birthday, u_phonenumber, u_address, "
				+ " u_email, u_grade, u_nickname) " + " VALUES (users_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";

		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getU_pw());
				psmt.setString(2, dto.getU_name());
				psmt.setDate(3, dto.getU_birthday());
				psmt.setString(4, dto.getU_phonenumber());
				psmt.setString(5, dto.getU_address());
				psmt.setString(6, dto.getU_email());
				psmt.setInt(7, dto.getU_grade());
				psmt.setString(8, dto.getU_nickname());
			}
		});
	}

	// 유저 비활성화
	public int DeleteUser(final UsersDTO dto) {
		String sql = "Update users " + " SET u_state = 0 " + " WHERE u_id = ? ";
		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getU_id());
			}
		});
	}

	// 회원 정보변경 크게
	public int UpdateUsers(final UsersDTO dto) {
		String sql = " UPDATE users " + " SET u_pw = ?, u_phonenumber = ?, u_address = ? "
				+ " u_email = ?, u_grade = ?, u_nickname = ? " + " WHERE u_id = ? ";
		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getU_pw());
				psmt.setString(2, dto.getU_phonenumber());
				psmt.setString(3, dto.getU_address());
				psmt.setString(4, dto.getU_email());
				psmt.setInt(5, dto.getU_grade());
				psmt.setString(6, dto.getU_nickname());
			}
		});
	}

	// 유저 정보가져오기
	public UsersDTO selectOne(String u_id) {
		String sql = "SELECT * FROM users WHERE u_id=?";
		return (UsersDTO) template.queryForObject(sql, new BeanPropertyRowMapper<UsersDTO>(UsersDTO.class));
	}

	// 유저 전부가져오기(검색가능)
	public List<UsersDTO> selectAll(Map<String, Object> map) {
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM users ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ) Tb " + ") WHERE rNum BETWEEN ? AND ? ";

		return (List<UsersDTO>) template.query(sql, new BeanPropertyRowMapper<UsersDTO>(UsersDTO.class));
	}
}
