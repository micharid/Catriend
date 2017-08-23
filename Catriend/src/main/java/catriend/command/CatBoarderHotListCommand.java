package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;
import catriend.model.CatBoarderDTO;

public class CatBoarderHotListCommand implements CatCommand{
	@Override
	public void execute(Model model) {

		//DAO 연결
		CatBoarderDAO dao = new CatBoarderDAO();
		
		//파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest)paramMap.get("req");
		
		//전체 레코드수를 카운드
		int totalRecordCount = dao.getTotalCatBoarderCount(paramMap);
		
		int start = 1;
		int end = 16;
		
		paramMap.put("start", start);
		paramMap.put("end", end);
		
		//DAO에서 히트수가 높은 순으로 16개만 불러오기
		List<CatBoarderDTO> listRows = dao.selectHotRecord(paramMap);
		
		model.addAttribute("totalRecordCount", totalRecordCount);
		//리스트 레코드를 저장
		model.addAttribute("listRows", listRows);
		
		System.out.println("execute()메소드 호출");
	}
}
