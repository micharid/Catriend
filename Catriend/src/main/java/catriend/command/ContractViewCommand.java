package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.ContractDAO;
import catriend.model.ContractDTO;

public class ContractViewCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		ContractDAO dao = new ContractDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		ContractDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("ct_index")));

		model.addAttribute("dto", dto);

		System.out.println("ContractViewCommand");
	}
}
