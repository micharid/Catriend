package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderDAO;

public class FreeBoarderDeleteCommand implements CatCommand{
	@Override
	public void execute(Model model) {
		// DAO 연결
		FreeBoarderDAO dao = new FreeBoarderDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		dao.DeleteFreeBoarder(Integer.parseInt(req.getParameter("fb_index")));

		System.out.println("FreeBoarderDeleteCommand");
	}
}
