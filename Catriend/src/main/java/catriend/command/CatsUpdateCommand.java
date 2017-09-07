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

		dto.setC_index(Integer.parseInt(paramMap.get("c_index").toString()));
		dto.setC_name(req.getParameter("c_name"));
		dto.setC_keyword(req.getParameter("c_keyword"));
		dto.setC_health(req.getParameter("c_health"));
		dto.setC_type(req.getParameter("c_type"));
		dto.setC_grade(Integer.parseInt(req.getParameter("c_grade")));

		String sdayStr = req.getParameter("c_sday");
		String edayStr = req.getParameter("c_eday");
		String birStr = req.getParameter("c_birthday");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");

		java.sql.Date c_sday = null;
		java.sql.Date c_eday = null;
		java.sql.Date c_birthday = null;

		try {
			c_sday = new java.sql.Date(simple.parse(sdayStr).getTime());
			c_eday = new java.sql.Date(simple.parse(edayStr).getTime());
			c_birthday = new java.sql.Date(simple.parse(birStr).getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}
		dto.setC_sday(c_sday);
		dto.setC_eday(c_eday);
		dto.setC_birthday(c_birthday);
		dto.setC_detail(req.getParameter("c_detail"));
		dto.setC_gender(req.getParameter("c_gender"));

		dao.UpdateCat(dto);

		System.out.println("CatsUpdateCommand");
	}
}
