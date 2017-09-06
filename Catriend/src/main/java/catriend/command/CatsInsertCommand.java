package catriend.command;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatsDAO;
import catriend.model.CatsDTO;

public class CatsInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatsDAO dao = new CatsDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatsDTO dto = new CatsDTO();

		String birtgstr = req.getParameter("c_birthday");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date c_birthday = null;
		try {
			c_birthday = new java.sql.Date(simple.parse(birtgstr).getTime());

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		dto.setC_name(req.getParameter("c_name"));
		dto.setC_birthday(c_birthday);
		dto.setC_gender(req.getParameter("c_gender"));
		dto.setC_type(req.getParameter("c_type"));
		dto.setC_keyword(req.getParameter("c_keyword"));
		dto.setC_grade(Integer.parseInt(req.getParameter("c_grade")));

		dao.InsertCat(dto);

		System.out.println("CatsInsertCommand");
	}
}
