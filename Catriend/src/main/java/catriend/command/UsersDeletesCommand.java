package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;
import catriend.model.UsersDAO;

public class UsersDeletesCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		UsersDAO dao = new UsersDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		String[] u_ids = req.getParameterValues("select");
		if (u_ids != null) {
			for (String arrStr : u_ids) {
				dao.DeleteUser(arrStr);
			}
		}
		System.out.println("UsersDeletesCommand");
	}
}
