package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderCommentDAO;
import catriend.model.FreeBoarderCommentDTO;

public class FreeBoarderCommentReplyCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		FreeBoarderCommentDAO dao = new FreeBoarderCommentDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		
		int fbc_index = Integer.parseInt(req.getParameter("fbc_index"));
		
		System.out.println(fbc_index);
		
		FreeBoarderCommentDTO dto = dao.selectOne(fbc_index);

		dto.setFbc_content(req.getParameter("fbc_content"));
		dto.setU_id(req.getParameter("u_id"));

		dao.ReplyFreeBoarderComment(dto);

		System.out.println("FreeBoarderCommentReplyCommand");
	}
}