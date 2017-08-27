package catriend.command;

import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.FreeBoarderCommentDAO;
import catriend.model.FreeBoarderCommentDTO;

public class FreeBoarderCommentUpdateCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		FreeBoarderCommentDAO dao = new FreeBoarderCommentDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		FreeBoarderCommentDTO dto = new FreeBoarderCommentDTO();

		dto.setFbc_content(req.getParameter("fbc_content"));
		dto.setFbc_index(Integer.parseInt(req.getParameter("fbc_index")));

		String dateStr = req.getParameter("fbc_date");
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date fb_date = null;
		try {
			fb_date = new java.sql.Date(simple.parse(dateStr).getTime());
			dto.setFbc_date(fb_date);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("FreeBoarderCommentUpdateCommand Date포맷 입력 에러");
		}

		dao.UpdateFreeBoarderComment(dto);

		System.out.println("FreeBoarderCommentUpdateCommand");

	}

}
