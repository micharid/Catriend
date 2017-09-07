package catriend.command;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import catriend.model.QnaDAO;
import catriend.model.QnaDTO;

public class UserQnaListCommand implements CatCommand {
	public void execute(Model model) {
		QnaDAO dao = new QnaDAO();

		Map<String, Object> paramMap = model.asMap();

		int totalRecordCount = dao.getTotalMygetTotalQna(paramMap);

		List<QnaDTO> dto = dao.myqna(paramMap.get("u_id").toString());

		model.addAttribute("myQnaList", dto);
		model.addAttribute("totalRecordCount", totalRecordCount);

		System.out.println("UserQnaListCommand");
	}
}
