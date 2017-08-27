package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatHistoryDAO;
import catriend.model.CatHistoryDTO;

public class CatHistoryViewCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatHistoryDAO dao = new CatHistoryDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatHistoryDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("ch_index")));

		model.addAttribute("dto", dto);

		System.out.println("CatHistoryViewCommand");
	}
}
