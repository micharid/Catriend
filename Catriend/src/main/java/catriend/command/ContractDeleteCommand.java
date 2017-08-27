package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.ContractDAO;

public class ContractDeleteCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		ContractDAO dao = new ContractDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteContract(Integer.parseInt(req.getParameter("ct_index")));

		System.out.println("ContractDeleteCommand");
	}
}
