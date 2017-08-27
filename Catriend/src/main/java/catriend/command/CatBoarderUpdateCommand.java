package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;
import catriend.model.CatBoarderDTO;

public class CatBoarderUpdateCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatBoarderDAO dao = new CatBoarderDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatBoarderDTO dto = new CatBoarderDTO();

		dto.setCb_index(Integer.parseInt(req.getParameter("cb_index")));
		dto.setCb_title(req.getParameter("cb_title"));
		dto.setCb_content(req.getParameter("cb_content"));
		dto.setCb_file(req.getParameter("cb_file"));
		dto.setU_id(req.getParameter("u_id"));

		dao.UpdateCatBoarder(dto);

		System.out.println("CatBoarderUpdateCommand");
	}
}
