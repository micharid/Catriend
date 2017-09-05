package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;

public class CatBoarderLikeUpCommand  implements CatCommand{
	@Override
	public void execute(Model model) {
		
		CatBoarderDAO dao = new CatBoarderDAO();
		
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		int cb_index = Integer.parseInt(req.getParameter("cb_index"));
		String u_id = req.getParameter("u_id");
		
		dao.likeUp(cb_index, u_id);
		
		System.out.println("CatBoarderLikeUpCommand");
	}
}