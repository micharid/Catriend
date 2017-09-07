package catriend.command;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;
import catriend.model.FreeBoarderDAO;
import catriend.model.FreeBoarderDTO;

public class FreeBoarderHotListCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		FreeBoarderDAO dao = new FreeBoarderDAO();

		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();

		int start = 1;
		int end = 6;

		paramMap.put("start", start);
		paramMap.put("end", end);

		// DAO에서 히트수가 높은 순으로 16개만 불러오기
		List<FreeBoarderDTO> listRows = dao.selectHotRecord(paramMap);

		// 리스트 레코드를 저장
		model.addAttribute("FreeBoarderHotList", listRows);

		System.out.println("FreeBoarderHotListCommand");
	}
}
