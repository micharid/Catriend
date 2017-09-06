package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;

public class CatBoardsDeletesCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatBoarderDAO dao = new CatBoarderDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		String[] c_indexs = req.getParameterValues("select");
		if (c_indexs != null) {
			for (String arrStr : c_indexs) {
				int c_index = Integer.parseInt(arrStr);
				dao.DeleteCatBoarder(c_index);
			}
		}
		System.out.println("CatBoardsDeletesCommand");
	}
}
