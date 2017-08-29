package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderCommentDAO;
import catriend.model.FreeBoarderCommentDTO;

public class FreeBoarderCommentUpdateCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		FreeBoarderCommentDAO dao = new FreeBoarderCommentDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		FreeBoarderCommentDTO dto = new FreeBoarderCommentDTO();

		dto.setFbc_content(req.getParameter("fbc_content"));
		dto.setFbc_index(Integer.parseInt(req.getParameter("fbc_index")));

		dao.UpdateFreeBoarderComment(dto);

		System.out.println("FreeBoarderCommentUpdateCommand");

	}

}
