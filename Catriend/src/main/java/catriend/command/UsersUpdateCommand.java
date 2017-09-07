package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import catriend.model.UsersDAO;
import catriend.model.UsersDTO;

public class UsersUpdateCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		UsersDAO dao = new UsersDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		UsersDTO dto = new UsersDTO();
		dto.setU_id(req.getParameter("u_id"));
		dto.setU_pw(req.getParameter("u_pw"));
		dto.setU_phonenumber(req.getParameter("u_phonenumber"));
		dto.setU_address(req.getParameter("u_address"));
		dto.setU_email(req.getParameter("u_email"));
		dto.setU_grade(Integer.parseInt(req.getParameter("u_grade")));
		dto.setU_nickname(req.getParameter("u_nickname"));

		dao.UpdateUsers(dto);
		dto = dao.selectOne(dto.getU_id());
		HttpSession session = req.getSession();
		session.setAttribute("loginUser", dto);

		System.out.println("UsersUpdateCommand");
	}
}