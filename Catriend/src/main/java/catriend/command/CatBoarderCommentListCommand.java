package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderCommentDAO;
import catriend.model.CatBoarderCommentDTO;

import catriend.model.PagingUtil;

public class CatBoarderCommentListCommand implements CatCommand {
	@Override
	public void execute(Model model) {

		// DAO 연결
		CatBoarderCommentDAO dao = new CatBoarderCommentDAO();

		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();

		// DAO에서 list메소드로 목록가져오기
		List<CatBoarderCommentDTO> listRows = dao.selectAll(paramMap);

		// 리스트 레코드를 저장
		model.addAttribute("CatBoarderCommentLists", listRows);

		System.out.println("CatBoarderCommentListCommand");
	}
}