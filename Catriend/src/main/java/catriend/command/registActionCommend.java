package catriend.command;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.UsersDAO;
import catriend.model.UsersDTO;



public class registActionCommend{
	public void userInsert(Model model) throws Exception {
		
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest)paramMap.get("req");
		
		String birthStr = req.getParameter("birthday");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date u_birthday = new java.sql.Date(simple.parse(birthStr).getTime());
		
		UsersDTO dto = new UsersDTO();
		
		dto.setU_id(req.getParameter("id"));
		dto.setU_pw(req.getParameter("password"));
		dto.setU_name(req.getParameter("name"));
		dto.setU_birthday(u_birthday);
		dto.setU_email(req.getParameter("email"));
		dto.setU_phonenumber(req.getParameter("phoneNumber"));
		dto.setU_address(req.getParameter("address"));
		dto.setU_nickname(req.getParameter("nickname"));
		dto.setU_grade(10);
		
		UsersDAO dao = new UsersDAO();
		dao.InsertUser(dto);
	}
}
