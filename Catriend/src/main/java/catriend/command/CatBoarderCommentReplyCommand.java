package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderCommentDAO;
import catriend.model.CatBoarderCommentDTO;

public class CatBoarderCommentReplyCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatBoarderCommentDAO dao = new CatBoarderCommentDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		int cbc_index = Integer.parseInt(req.getParameter("cbc_index"));

		CatBoarderCommentDTO dto = dao.selectOne(cbc_index);

		dto.setCbc_content(req.getParameter("cbc_content"));
		dto.setU_id(req.getParameter("u_id"));

		dao.ReplyCatBoarderComment(dto);

		System.out.println("CatBoarderCommentReplyCommand");
	}
}
