package catriend.command;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import catriend.model.CatsDAO;
import catriend.model.CatsDTO;

public class CatsListCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatsDAO dao = new CatsDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();

		// DAO에서 list메소드로 목록가져오기
		List<CatsDTO> listRows = dao.selectAll(paramMap);

		// 리스트 레코드를 저장
		model.addAttribute("listRows", listRows);

		System.out.println("CatsListCommand");
	}
}
