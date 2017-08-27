package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatsDAO;
import catriend.model.CatsDTO;

public class CatsViewCommand implements CatCommand{
	@Override
	public void execute(Model model) {
		//DAO 연결
		CatsDAO dao = new CatsDAO();
		//파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest)paramMap.get("req");
		
		String c_index = req.getParameter("c_index");
		
		CatsDTO dto = dao.selectOne(Integer.parseInt(c_index));
		
		model.addAttribute("dto", dto);
		
		System.out.println("CatsViewCommand");
	}
}
