package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.PagingUtil;
import catriend.model.UsersDAO;
import catriend.model.UsersDTO;

public class AdminUserListCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		UsersDAO dao = new UsersDAO();

		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		// 전체 레코드수를 카운트
		int totalRecordCount = dao.getTotalUserCount(paramMap);

		// 페이지설정값(보이는 리스트갯수, 페이지갯수)
		int pageSize = 5;
		int blockPage = 4;
		// 전체페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 현재페이지를 파라미터로 받기
		int nowPage = req.getParameter("nowPage") == null ? 1 : Integer.parseInt(req.getParameter("nowPage"));
		// 시작 및 끝 rownum 구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// DAO로 넘길 파라미터 조립
		paramMap.put("start", start);
		paramMap.put("end", end);
		paramMap.put("totalPage", totalPage);
		paramMap.put("nowPage", nowPage);
		paramMap.put("totalCount", totalRecordCount);
		paramMap.put("pageSize", pageSize);
		paramMap.put("blockPage", blockPage);

		// 페이지 처리를 위한 문자열 생성
		String addQueryStr = "";
		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/adminUserManagement?" + addQueryStr);

		// DAO에서 list메소드로 목록가져오기
		List<UsersDTO> listRows = dao.selectAll(paramMap);

		// 페이지 처리를 위한 저장
		model.addAttribute("pagingImg", pagingImg);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("nowPage", nowPage);

		model.addAttribute("totalRecordCount", totalRecordCount);
		// 리스트 레코드를 저장
		model.addAttribute("adminuserlist", listRows);

		System.out.println("AdminUserListCommand");
	}
}
