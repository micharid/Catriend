package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.ContractDAO;
import catriend.model.ContractDTO;

public class ContractListCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		ContractDAO dao = new ContractDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		List<ContractDTO> lists = dao.selectAll(paramMap);

		model.addAttribute("lists", lists);

		System.out.println("ContractListCommand");
	}
}
