package catriend.command;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.UsersDAO;
import catriend.model.UsersDTO;

public class UsersInsertCommand implements CatCommand {
	public void execute(Model model) {

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		String birthStr = req.getParameter("u_birthday");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");

		java.sql.Date u_birthday = null;

		try {
			u_birthday = new java.sql.Date(simple.parse(birthStr).getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}

		UsersDTO dto = new UsersDTO();

		dto.setU_id(req.getParameter("u_id"));
		dto.setU_pw(req.getParameter("u_pw"));
		dto.setU_name(req.getParameter("u_name"));
		dto.setU_birthday(u_birthday);
		dto.setU_email(req.getParameter("u_email"));
		dto.setU_phonenumber(req.getParameter("u_phoneNumber"));
		dto.setU_address(req.getParameter("u_address"));
		dto.setU_nickname(req.getParameter("u_nickname"));
		dto.setU_grade(Integer.parseInt(req.getParameter("u_grade")));

		UsersDAO dao = new UsersDAO();
		dao.InsertUser(dto);

		System.out.println("UsersInsertCommand");
	}
}
