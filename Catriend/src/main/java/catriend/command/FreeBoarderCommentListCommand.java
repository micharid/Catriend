package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderCommentDAO;
import catriend.model.FreeBoarderCommentDTO;

public class FreeBoarderCommentListCommand implements CatCommand {
	@Override
	public void execute(Model model) {

		// DAO 연결
		FreeBoarderCommentDAO dao = new FreeBoarderCommentDAO();

		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		// DAO에서 list메소드로 목록가져오기
		List<FreeBoarderCommentDTO> listRows = dao.selectAll(paramMap);

		// 리스트 레코드를 저장
		model.addAttribute("FreeBoarderCommentLists", listRows);

		System.out.println("FreeBoarderCommentListCommand");
	}
}