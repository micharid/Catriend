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

		String cbc_content = req.getParameter("cbc_content");
		String u_id = req.getParameter("u_id");
		int cb_index = Integer.parseInt(req.getParameter("cb_index"));
		
		dto.setCbc_content(cbc_content);
		dto.setU_id(u_id);
		dto.setCb_index(cb_index);
		
		dao.InsertCatBoarderComment(dto);

		System.out.println("CatBoarderCommentInsertCommand");

	}

}