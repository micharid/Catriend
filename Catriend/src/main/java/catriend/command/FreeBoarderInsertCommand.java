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
		String fb_title = req.getParameter("fb_title");
		String fb_content = req.getParameter("fb_content");
		String fb_file = null;
		
		if(paramMap.get("fb_file") != null) {
			fb_file = paramMap.get("fb_file").toString();
		}
		
		String u_id = req.getParameter("u_id");
		System.out.println(fb_title+","+fb_content+","+fb_file+","+u_id);
		
		dto.setFb_title(fb_title);
		dto.setFb_content(fb_content);
		dto.setFb_file(fb_file);
		dto.setU_id(u_id);

		dao.InsertFreeBoarder(dto);

		System.out.println("FreeBoarderInsertCommand");
	}
}