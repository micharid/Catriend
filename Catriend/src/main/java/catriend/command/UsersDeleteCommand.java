package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.UsersDAO;

public class UsersDeleteCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		UsersDAO dao = new UsersDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteUser(req.getParameter("u_id"));

		System.out.println("UsersDeleteCommand");
	}
}
