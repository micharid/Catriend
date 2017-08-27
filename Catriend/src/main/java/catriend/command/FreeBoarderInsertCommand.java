package catriend.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderDAO;
import catriend.model.FreeBoarderDTO;

public class FreeBoarderInsertCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		FreeBoarderDAO dao = new FreeBoarderDAO();

		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		FreeBoarderDTO dto = new FreeBoarderDTO();

		dto.setFb_title(req.getParameter("fb_title"));
		dto.setFb_content(req.getParameter("fb_content"));
		dto.setFb_file(req.getParameter("fb_file"));
		dto.setU_id("u_id");

		dao.InsertFreeBoarder(dto);

		System.out.println("FreeBoarderInsertCommand");
	}
}