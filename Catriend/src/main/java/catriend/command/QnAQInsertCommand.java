package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.QnaDAO;
import catriend.model.QnaDTO;

public class QnAQInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		QnaDAO dao = new QnaDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		QnaDTO dto = new QnaDTO();

		dto.setQ_title(req.getParameter("q_title"));
		dto.setQ_content(req.getParameter("q_content"));
		dto.setU_id(req.getParameter("u_id"));
		dao.InsertQnaQ(dto);

		System.out.println("QnAQInsertCommand");
	}
}