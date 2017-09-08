package catriend.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import catriend.model.CatsDAO;
import catriend.model.CatsDTO;
import catriend.model.PagingUtil;

public class AdminCatListCommand implements CatCommand {
	@Override
	public void execute(Model model) {
		// DAO 연결
		CatsDAO dao = new CatsDAO();
		// 파라미터 받기
		Map<String, Object> paramMap = model.asMap();
		HttpServletRequest req = (HttpServletRequest) paramMap.get("req");

		String order = req.getParameter("order") != null ? req.getParameter("order") : null;
		int sort = Integer.parseInt(paramMap.get("sort").toString());
		// 전체 레코드수를 카운트
		int totalRecordCount = dao.getTotalCatsCount(paramMap);

		// 페이지설정값(보이는 리스트갯수, 페이지갯수)
		int pageSize = 5;
		int blockPage = 4;
		// 전체페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 현재 페이지를 파라미터로 받기
		int nowPage = req.getParameter("nowPage") == null ? 1 : Integer.parseInt(req.getParameter("nowPage"));
		if (nowPage == 0) {
			sort = Integer.parseInt(paramMap.get("sort").toString()) + 1;
			nowPage = 1;
		}
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
		paramMap.put("order", order);
		paramMap.put("sort", sort);

		// 페이지 처리를 위한 문자열 생성
		String addQueryStr = "";
		addQueryStr = "sort="+sort+"&order="+order+"&";
		String pagingImg = PagingUtil.pagingImg(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/adminCatManagement?" + addQueryStr);

		// DAO에서 list메소드로 목록가져오기
		List<CatsDTO> listRows = dao.selectAlladmin(paramMap);

		// 페이지 처리를 위한 저장
		model.addAttribute("pagingImg", pagingImg);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("sort", sort);

		model.addAttribute("totalRecordCount", totalRecordCount);
		// 리스트 레코드를 저장
		model.addAttribute("admincatlists", listRows);

		System.out.println("AdminCatListCommand");
	}
}
