package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import catriend.model.UsersDAO;
import catriend.model.UsersDTO;

public class LoginCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		UsersDAO dao = new UsersDAO();

		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		
		System.out.println(req.getParameter("u_id") + req.getParameter("u_pw"));
		
		UsersDTO dto = dao.loginProcess(req.getParameter("u_id"), req.getParameter("u_pw")) != null ? dao.loginProcess(req.getParameter("u_id"), req.getParameter("u_pw")) : null;
		HttpSession session = req.getSession();
		
		if (dto != null) {
			session.setAttribute("loginUser", dto);
		} else {
			model.addAttribute("loginError", "로그인이 실패되었습니다.");
		}
	}
}
