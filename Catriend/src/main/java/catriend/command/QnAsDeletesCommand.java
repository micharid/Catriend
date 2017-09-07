package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;
import catriend.model.FreeBoarderDAO;
import catriend.model.QnaDAO;

public class QnAsDeletesCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		QnaDAO dao = new QnaDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		String[] q_indexs = req.getParameterValues("select");
		if (q_indexs != null) {
			for (String arrStr : q_indexs) {
				int q_index = Integer.parseInt(arrStr);
				dao.DeleteQna(q_index);
			}
		}
		System.out.println("QnAsDeletesCommand");
	}
}
