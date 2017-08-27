package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;
import catriend.model.CatBoarderDTO;

public class CatBoarderInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatBoarderDAO dao = new CatBoarderDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatBoarderDTO dto = new CatBoarderDTO();

		dto.setCb_title(req.getParameter("cb_title"));
		dto.setCb_content(req.getParameter("cb_content"));
		dto.setCb_file(req.getParameter("cb_file"));
		dto.setU_id(req.getParameter("u_id"));
		dto.setC_index(Integer.parseInt(req.getParameter("c_index")));

		dao.InsertCatBoarder(dto);

		System.out.println("CatBoarderInsertCommand");
	}
}
