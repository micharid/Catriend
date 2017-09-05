package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderDAO;

public class FreeBoarderLikeRemoveCommand implements CatCommand{
	@Override
	public void execute(Model model) {
		
		FreeBoarderDAO dao = new FreeBoarderDAO();
		
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		int fb_index = Integer.parseInt(req.getParameter("fb_index"));
		String u_id = req.getParameter("u_id");
		String fb_like = req.getParameter("fb_like");
		
		fb_like = fb_like.replaceFirst("@u_"+u_id, "");
		
		dao.likeRemove(fb_index, fb_like);
		
		System.out.println("FreeBoarderLikeUpCommand");
	}
}
