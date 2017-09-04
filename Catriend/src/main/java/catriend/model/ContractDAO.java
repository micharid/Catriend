package catriend.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class ContractDAO {
	// Spring-JDBC 사용
	JdbcTemplate template;

	// 기본생성자
	public ContractDAO() {
		// Spring-JDBC사용
		this.template = Constant.template;
	}

	// 총갯수 가져오기(검색가능)
	public int getTotalContract(Map<String, Object> map) {
		String sql = "SELECT count(*) FROM contract";
   
		// 검색단어가 있을 경우 검색조건을 쿼리에 추가
		if (map.get("WORD") != null) {
			sql += " where " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		return template.queryForObject(sql, Integer.class);
	}
	
	public int getTotalMyContract(Map<String, Object> map) {
		String sql = " SELECT count(*) FROM contract WHERE u_id='"+map.get("u_id").toString()+"' ";
		return template.queryForObject(sql, Integer.class);
	}
	
	// 입력
	public int InsertContract(final ContractDTO dto) {
		String sql = "INSERT INTO " + " contract(ct_index, ct_sday, ct_eday, u_id, c_index) "
				+ " VALUES (contract_seq.nextval, ?, ?, ?, ?)";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setDate(1, dto.getCt_sday());
				psmt.setDate(2, dto.getCt_eday());
				psmt.setString(3, dto.getU_id());
				psmt.setInt(4, dto.getC_index());
			}
		});
	}

	public int UpdateContract(final ContractDTO dto) {
		String sql = " UPDATE contract " + " SET ct_sday=?, ct_eday=?, c_index=? " + " WHERE ct_index = ? ";
		return template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement psmt) throws SQLException {
				psmt.setDate(1, dto.getCt_sday());
				psmt.setDate(2, dto.getCt_eday());
				psmt.setInt(3, dto.getC_index());
				psmt.setInt(4, dto.getCt_index());

			}
		});
	}

	// 삭제
	public int DeleteContract(int ct_index) {
		String sql = " DELETE FROM contract WHERE ct_index=" + ct_index;
		return template.update(sql);
	}

	// 계약 상세보기
	public ContractDTO selectOne(int ct_index) {
		String sql = "SELECT * FROM contract WHERE ct_index=" + ct_index;
		return (ContractDTO) template.queryForObject(sql, new BeanPropertyRowMapper<ContractDTO>(ContractDTO.class));
	}

	public List<ContractDTO> selectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT * FROM contract ";
		if (map.get("COLUMN") != null) {
			sql += " WHERE " + map.get("COLUMN") + " like '%" + map.get("WORD") + "%' ";
		}
		sql += " ORDER BY ct_index DESC) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;
		return (List<ContractDTO>) template.query(sql, new BeanPropertyRowMapper<ContractDTO>(ContractDTO.class));
	}
	
	public List<ContractDTO> mySelectAll(Map<String, Object> map) {
		int start = Integer.parseInt(map.get("start").toString());
		int end = Integer.parseInt(map.get("end").toString());
		String sql = "";
		sql += "SELECT * FROM ( " + "SELECT Tb.* , rownum rNum FROM ( " + "SELECT contract.*, cats.c_name, cats.c_gender, cats.c_birthday FROM contract "
				+ " JOIN cats ON contract.c_index = cats.c_index"
				+ " WHERE u_id='"+ map.get("u_id").toString()+"' ";
		sql += " ORDER BY ct_index DESC) Tb " + ") WHERE rNum BETWEEN " + start + " AND " + end;
		return (List<ContractDTO>) template.query(sql, new BeanPropertyRowMapper<ContractDTO>(ContractDTO.class));
	}
	
	public int selectCheck(String u_id, int c_indext) {
		String sql = "select count(*) from (select c.c_index from users u inner join CONTRACT c " 
				+	 "on u.u_id = c.u_id where c.u_id = '" + u_id +"') ct " 
				+	 "inner join cats c " 
				+	 "on ct.c_index = c.c_index where c.c_index = " + c_indext;
		
		return template.queryForObject(sql, Integer.class);
	}
}