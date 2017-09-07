package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.ContractDAO;

public class ContractSelectCheckCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		ContractDAO dao = new ContractDAO();
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		int result = dao.selectCheck(req.getParameter("u_id"), Integer.parseInt(req.getParameter("c_index")));
		model.addAttribute("checkResult", result);

		System.out.println("ContractListCommand");
	}
}
