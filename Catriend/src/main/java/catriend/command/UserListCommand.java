package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.UsersDAO;
import catriend.model.UsersDTO;

public class UserListCommand implements CatCommand {
	public void execute(Model model) {
		UsersDAO dao = new UsersDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		
		List<UsersDTO> lists = dao.selectAll(paramMap);

		model.addAttribute("lists", lists);

		System.out.println("UserListCommand");
	}
}
