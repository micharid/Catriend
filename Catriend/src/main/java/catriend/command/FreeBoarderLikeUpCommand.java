package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderDAO;

public class FreeBoarderLikeUpCommand implements CatCommand {
	@Override
	public void execute(Model model) {

		FreeBoarderDAO dao = new FreeBoarderDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		int fb_index = Integer.parseInt(req.getParameter("fb_index"));
		String u_id = req.getParameter("u_id");
		dao.likeUp(fb_index, u_id);

		System.out.println("FreeBoarderLikeUpCommand");
	}
}
