package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderDAO;

public class myFreeBoardhistoryCommand implements CatCommand{
	@Override
	public void execute(Model model) {
		FreeBoarderDAO dao = new FreeBoarderDAO();
		
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		
		
	}
}
