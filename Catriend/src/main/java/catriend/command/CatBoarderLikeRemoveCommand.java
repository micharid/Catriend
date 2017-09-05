package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;

public class CatBoarderLikeRemoveCommand  implements CatCommand{
	@Override
	public void execute(Model model) {
		
		CatBoarderDAO dao = new CatBoarderDAO();
		
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		int cb_index = Integer.parseInt(req.getParameter("cb_index"));
		String u_id = req.getParameter("u_id");
		String cb_like = req.getParameter("cb_like");
		
		cb_like = cb_like.replaceFirst("@u_"+u_id, "");
		
		dao.likeRemove(cb_index, cb_like);
		
		System.out.println("FreeBoarderLikeUpCommand");
	}
}