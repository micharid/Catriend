package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public class LogoutCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		HttpSession session = req.getSession();

		session.invalidate();

		System.out.println("LogoutCommand");
	}
}
