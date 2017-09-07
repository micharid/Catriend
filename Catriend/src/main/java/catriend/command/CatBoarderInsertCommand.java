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
		String cb_title = req.getParameter("cb_title");
		String cb_content = req.getParameter("cb_content");
		String c_index = req.getParameter("c_index");
		String cb_file = null;

		if (paramMap.get("cb_file") != null) {
			cb_file = paramMap.get("cb_file").toString();
		}

		String u_id = req.getParameter("u_id");

		dto.setCb_title(cb_title);
		dto.setCb_content(cb_content);
		dto.setCb_file(cb_file);
		dto.setU_id(u_id);
		dto.setC_index(Integer.parseInt(c_index));

		dao.InsertCatBoarder(dto);

		System.out.println("CatBoarderInsertCommand");
	}
}
