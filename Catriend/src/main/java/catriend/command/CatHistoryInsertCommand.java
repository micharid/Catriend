package catriend.command;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatHistoryDAO;
import catriend.model.CatHistoryDTO;

public class CatHistoryInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		CatHistoryDAO dao = new CatHistoryDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		CatHistoryDTO dto = new CatHistoryDTO();

		dto.setCh_catio(Integer.parseInt(req.getParameter("ch_catio")));

		String dateStr = req.getParameter("ch_date");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");

		java.sql.Date ch_date = null;

		try {
			ch_date = new java.sql.Date(simple.parse(dateStr).getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}

		dto.setCh_date(ch_date);
		dto.setU_id(req.getParameter("u_id"));
		dto.setC_index(Integer.parseInt(req.getParameter("c_index")));

		dao.InsertCatHistory(dto);

		System.out.println("CatHistoryInsertCommand");
	}
}
