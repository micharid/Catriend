package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.UsersDAO;
import catriend.model.UsersDTO;

public class UsersViewCommand implements CatCommand {
	public void execute(Model model) {
		UsersDAO dao = new UsersDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		UsersDTO dto = dao.selectOne(req.getParameter("u_id"));

		model.addAttribute("dto", dto);

		System.out.println("UsersViewCommand");
	}
}
