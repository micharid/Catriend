package catriend.command;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatsDAO;
import catriend.model.CatsDTO;

public class CatsUpdateCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatsDAO dao = new CatsDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatsDTO dto = new CatsDTO();

		dto.setC_index(Integer.parseInt(req.getParameter("c_index")));
		dto.setC_keyword(req.getParameter("c_keyword"));
		dto.setC_health(req.getParameter("c_health"));
		dto.setC_grade(Integer.parseInt(req.getParameter("c_grade")));

		String sdayStr = req.getParameter("c_sday");
		String edayStr = req.getParameter("c_eday");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");

		java.sql.Date c_sday = null;
		java.sql.Date c_eday = null;

		try {
			c_sday = new java.sql.Date(simple.parse(sdayStr).getTime());
			c_eday = new java.sql.Date(simple.parse(edayStr).getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}
		dto.setC_sday(c_sday);
		dto.setC_eday(c_eday);
		dto.setC_detail(req.getParameter("c_detail"));
		dto.setC_state(Integer.parseInt(req.getParameter("c_state")));

		dao.UpdateCat(dto);

		System.out.println("CatsUpdateCommand");
	}
}
