package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatsDAO;

public class CatsDeletesCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatsDAO dao = new CatsDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		String[] c_ids = req.getParameterValues("select");
		if (c_ids != null) {
			for (String arrStr : c_ids) {
				int c_index = Integer.parseInt(arrStr);
				dao.DeleteCat(c_index);
			}
		}
		System.out.println("UsersDeletesCommand");
	}
}
