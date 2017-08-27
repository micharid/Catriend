package catriend.command;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.ContractDAO;
import catriend.model.ContractDTO;

public class ContractInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		ContractDAO dao = new ContractDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		ContractDTO dto = new ContractDTO();

		String sdayStr = req.getParameter("ct_sday");
		String edayStr = req.getParameter("ct_eday");
		String dateStr = req.getParameter("ct_date");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");

		java.sql.Date ct_sday = null;
		java.sql.Date ct_eday = null;
		java.sql.Date ct_date = null;

		try {
			ct_sday = new java.sql.Date(simple.parse(sdayStr).getTime());
			ct_eday = new java.sql.Date(simple.parse(edayStr).getTime());
			ct_date = new java.sql.Date(simple.parse(dateStr).getTime());
		} catch (Exception e) {
			e.printStackTrace();
		}

		dto.setCt_sday(ct_sday);
		dto.setCt_eday(ct_eday);
		dto.setCt_date(ct_date);

		dto.setU_id(req.getParameter("u_id"));
		dto.setC_index(Integer.parseInt(req.getParameter("c_index")));

		dao.InsertContract(dto);

		System.out.println("ContractInsertCommand");
	}
}
