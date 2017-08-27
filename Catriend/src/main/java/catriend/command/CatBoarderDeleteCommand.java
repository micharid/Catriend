package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;

public class CatBoarderDeleteCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatBoarderDAO dao = new CatBoarderDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteCatBoarder(Integer.parseInt(req.getParameter("cb_index")));

		System.out.println("CatBoarderDeleteCommand");
	}
}