package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderCommentDAO;
import catriend.model.FreeBoarderCommentDTO;

public class FreeBoarderCommentInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		FreeBoarderCommentDAO dao = new FreeBoarderCommentDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		FreeBoarderCommentDTO dto = new FreeBoarderCommentDTO();

		String fbc_content = req.getParameter("fbc_content");
		String u_id = req.getParameter("u_id");
		int fb_index = Integer.parseInt(req.getParameter("fb_index"));

		dto.setFbc_content(fbc_content);
		dto.setU_id(u_id);
		dto.setFb_index(fb_index);

		dao.InsertFreeBoarderComment(dto);

		System.out.println("FreeBoarderCommentInsertCommand");
	}
}