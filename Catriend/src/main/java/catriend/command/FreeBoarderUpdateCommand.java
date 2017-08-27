package catriend.command;

import java.text.SimpleDateFormat;
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

		FreeBoarderDTO dto = new FreeBoarderDTO();

		dto.setFb_index(Integer.parseInt(req.getParameter("fb_index")));
		dto.setFb_title(req.getParameter("fb_title"));
		dto.setFb_content(req.getParameter("fb_content"));
		dto.setFb_file(req.getParameter("fb_file"));
		
		
		String dateStr = req.getParameter("fb_date");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date fb_date = null;
		try {
			fb_date = new java.sql.Date(simple.parse(dateStr).getTime());
			dto.setFb_date(fb_date);
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("FreeBoarderUpdateCommand Date포맷 입력 에러");
		}

		dao.UpdateFreeBoarder(dto);

		System.out.println("FreeBoarderCommand");
	}
}
