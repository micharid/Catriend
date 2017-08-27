package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderCommentDAO;

public class FreeBoarderCommentDeleteCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		FreeBoarderCommentDAO dao = new FreeBoarderCommentDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteFreeBoarderComment(Integer.parseInt(req.getParameter("fbc_index")));

		System.out.println("FreeBoarderCommentDeleteCommand");
	}
}