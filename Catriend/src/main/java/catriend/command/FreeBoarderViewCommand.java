package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderDAO;
import catriend.model.FreeBoarderDTO;

public class FreeBoarderViewCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		FreeBoarderDAO dao = new FreeBoarderDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		FreeBoarderDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("fb_index")));
		
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		
		model.addAttribute("dto", dto);

		System.out.println("FreeBoarderViewCommand");
	}
}
