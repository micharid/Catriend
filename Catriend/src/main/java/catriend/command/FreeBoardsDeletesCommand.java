package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatBoarderDAO;
import catriend.model.FreeBoarderDAO;

public class FreeBoardsDeletesCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		FreeBoarderDAO dao = new FreeBoarderDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		
		String[] fb_indexs = req.getParameterValues("select");
		
		for (String arrStr : fb_indexs) {
			int fb_index = Integer.parseInt(arrStr);
			dao.DeleteFreeBoarder(fb_index);
		}
		
		System.out.println("CatBoardsDeletesCommand");
	}
}
