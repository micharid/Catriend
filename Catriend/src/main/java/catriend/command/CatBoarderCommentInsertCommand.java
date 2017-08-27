package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderCommentDAO;
import catriend.model.CatBoarderCommentDTO;

public class CatBoarderCommentInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatBoarderCommentDAO dao = new CatBoarderCommentDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatBoarderCommentDTO dto = new CatBoarderCommentDTO();

		dto.setCbc_content(req.getParameter("cbc_content"));
		dto.setCbc_index(Integer.parseInt(req.getParameter("cbc_index")));

		dao.UpdateCatBoarderComment(dto);

		System.out.println("CatBoarderCommentInsertCommand");

	}

}