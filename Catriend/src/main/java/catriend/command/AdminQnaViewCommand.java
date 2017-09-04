package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.QnaDAO;
import catriend.model.QnaDTO;

public class AdminQnaViewCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		QnaDAO dao = new QnaDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		String q_index = req.getParameter("q_index");

		QnaDTO dto = dao.selectOne(Integer.parseInt(q_index));

		model.addAttribute("dto", dto);

		System.out.println("QnAViewCommand");
	}
}
