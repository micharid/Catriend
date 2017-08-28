package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderCommentDAO;
import catriend.model.CatBoarderCommentDTO;

public class CatBoarderCommentUpdateCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatBoarderCommentDAO dao = new CatBoarderCommentDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatBoarderCommentDTO dto = new CatBoarderCommentDTO();

		dto.setCbc_content(req.getParameter("cbc_content"));
		dto.setU_id(req.getParameter("u_id"));
		dto.setCbc_index(Integer.parseInt(req.getParameter("cbc_index")));

		dao.InsertCatBoarderComment(dto);

		System.out.println("CatBoarderCommentUpdateCommand");
	}
}