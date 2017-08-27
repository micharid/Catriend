package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.QnaDAO;

public class QnADeleteCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		QnaDAO dao = new QnaDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteQna(Integer.parseInt(req.getParameter("q_index")));

		System.out.println("QnADeleteCommand");
	}
}
