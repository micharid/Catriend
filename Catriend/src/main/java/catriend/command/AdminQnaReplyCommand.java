package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.QnaDAO;
import catriend.model.QnaDTO;

public class AdminQnaReplyCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		QnaDAO dao = new QnaDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		QnaDTO dto = new QnaDTO();

		dto.setQ_index(Integer.parseInt(req.getParameter("q_index")));
		dto.setQ_answer(req.getParameter("q_answer"));

		dao.AnswerQna(dto);

		System.out.println("AdminQnaReplyCommand");
	}
}
