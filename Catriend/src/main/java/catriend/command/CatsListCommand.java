package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatsDAO;
import catriend.model.CatsDTO;

public class CatsListCommand implements CatCommand{
	@Override
	public void execute(Model model) {
		//DAO 연결
		CatsDAO dao = new CatsDAO();
		//파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest)paramMap.get("req");
		
		//총수
		int totalRecordCount = dao.getTotalCatsCount(paramMap);
		
		//전부가져오기
		int start = 1;
		int end = totalRecordCount;
		paramMap.put("start", start);
		paramMap.put("end", end);
		
		//DAO에서 list메소드로 목록가져오기
		List<CatsDTO> listRows = dao.selectAll(paramMap);
		
		//총수 입력
		model.addAttribute("totalRecordCount", totalRecordCount);
		//리스트 레코드를 저장
		model.addAttribute("listRows", listRows);
		
		System.out.println("execute()메소드 호출");
	}
}
