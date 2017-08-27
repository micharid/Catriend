package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatHistoryDAO;

public class CatHistoryDeleteCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatHistoryDAO dao = new CatHistoryDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteCatHistory(Integer.parseInt(req.getParameter("ch_index")));

		System.out.println("CatsHistoryDeleteCommand");
	}
}
