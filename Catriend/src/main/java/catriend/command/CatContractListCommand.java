package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.ContractDAO;
import catriend.model.ContractDTO;

public class CatContractListCommand implements CatCommand{
	@Override
	public void execute(Model model) {
		ContractDAO dao = new ContractDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		
		List<ContractDTO> list = dao.CatContractList(paramMap);
		
		model.addAttribute("list", list);
		
		System.out.println("CatContractListCommand");
	}
}
