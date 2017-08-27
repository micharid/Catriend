package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderCommentDAO;

public class CatBoarderCommentDeleteCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatBoarderCommentDAO dao = new CatBoarderCommentDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteCatBoarderComment(Integer.parseInt(req.getParameter("cbc_index")));

		System.out.println("CatBoarderCommentDeleteCommand");
	}
}