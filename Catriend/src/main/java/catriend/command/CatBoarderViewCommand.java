package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;
import catriend.model.CatBoarderDTO;

public class CatBoarderViewCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatBoarderDAO dao = new CatBoarderDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatBoarderDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("cb_index")));

		model.addAttribute("dto", dto);
		
		dao.CatBoarderLikeUp(Integer.parseInt(req.getParameter("cb_index")));

		System.out.println("CatBoarderViewCommand");
	}
}
