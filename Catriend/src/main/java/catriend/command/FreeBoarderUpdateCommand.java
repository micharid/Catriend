package catriend.command;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderDAO;
import catriend.model.FreeBoarderDTO;

public class FreeBoarderUpdateCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		FreeBoarderDAO dao = new FreeBoarderDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");
		System.out.println("fb_title : " + req.getParameter("fb_title"));

		FreeBoarderDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("fb_index")));
		
		dto.setFb_title(req.getParameter("fb_title"));
		dto.setFb_file(paramMap.get("fb_file").toString());
		dto.setFb_content(req.getParameter("fb_content"));

		model.addAttribute("dto", dto);

		dao.UpdateFreeBoarder(dto);

		System.out.println("FreeBoarderCommand");
	}
}
