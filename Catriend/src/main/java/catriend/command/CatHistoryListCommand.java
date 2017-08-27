package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatHistoryDAO;
import catriend.model.CatHistoryDTO;

public class CatHistoryListCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatHistoryDAO dao = new CatHistoryDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		List<CatHistoryDTO> lists = dao.selectAll(paramMap);

		model.addAttribute("lists", lists);

		System.out.println("CatHistoryListCommand");
	}
}
