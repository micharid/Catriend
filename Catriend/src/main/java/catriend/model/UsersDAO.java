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

	// 아이디 중복체크
	public int userEqual(String u_id) {
		String query = " SELECT count(*) FROM users WHERE u_id = '" + u_id + "'";
		return template.queryForObject(query, Integer.class);
	}

	public int nickEqual(String u_nick) {
		String query = " SELECT count(*) FROM users WHERE u_nickname = '" + u_nick + "'";
		return template.queryForObject(query, Integer.class);
	}

	// 유저 총수 가져오기(검색가능)
	public int getTotalUserCount(Map<String, Object> map) {
		String sql = "SELECT count(*) FROM users WHERE u_state = 1 ";
		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " AND " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}
	
	//점수 증가
	public void gradeUp(String u_id){
		String sql = " UPDATE users SET u_grade = u_grade+5 WHERE u_id = '"+u_id+"' AND u_grade < 100";
		
		template.update(sql);
	}
	

	// 유저 입력
	public int InsertUser(final UsersDTO dto) {
		String sql = "INSERT INTO " + " users (u_id, u_pw, u_name, u_birthday, u_phonenumber, u_address, "
				+ " u_email, u_grade, u_nickname) " + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, dto.getU_id());
				psmt.setString(2, dto.getU_pw());
				psmt.setString(3, dto.getU_name());
				psmt.setDate(4, dto.getU_birthday());
				psmt.setString(5, dto.getU_phonenumber());
				psmt.setString(6, dto.getU_address());
				psmt.setString(7, dto.getU_email());
				psmt.setInt(8, dto.getU_grade());
				psmt.setString(9, dto.getU_nickname());
			}
		});
	}

	// 유저 비활성화
	public int DeleteUser(final String u_id) {
		String sql = "Update users " + " SET u_state = 0 " + " WHERE u_id = ? ";
		return this.template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setString(1, u_id);
			}
		});
	}

	// 회원 정보변경 크게
	public int UpdateUsers(final UsersDTO dto) {
		String sql = " UPDATE users " + " SET u_pw = ?, u_phonenumber = ?, u_address = ?, "
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
				psmt.setString(7, dto.getU_id());
			}
		});
	}

	// 유저 정보가져오기
	public UsersDTO selectOne(String u_id) {
		String sql = "SELECT * FROM users WHERE u_id= '" + u_id + "' AND u_state = 1 ";
		return (UsersDTO) template.queryForObject(sql, new BeanPropertyRowMapper<UsersDTO>(UsersDTO.class));
	}

	// 유저 전부가져오기(검색가능)
	public List<UsersDTO> selectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());

		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM users WHERE u_state = 1 ";
		if (map.get("COLUMN") != null) {
			sql += " AND " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += "order by u_name asc ) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end + " ";

		return (List<UsersDTO>) template.query(sql, new BeanPropertyRowMapper<UsersDTO>(UsersDTO.class));
	}

	// 유저 로그인시 필요메소드
	public UsersDTO loginProcess(String u_id, String u_pw) {
		String sql = " SELECT * FROM users WHERE u_id= '" + u_id + "' AND u_pw= '" + u_pw + "' AND u_state = 1 ";

		try {
			return (UsersDTO) template.queryForObject(sql, new BeanPropertyRowMapper<UsersDTO>(UsersDTO.class));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
