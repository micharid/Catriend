package catriend.model;

public class PagingUtil {

	public static String pagingImg(int totalRecordCount, int pageSize, int blockPage, int nowPage, String page) {
		String pagingStr = "";

		// 1.전체페이지 구하기
		int totalPage = (int) (Math.ceil(((double) totalRecordCount / pageSize)));
		// iniTemp는 해당 블록페이지 중 제일 첫번째 페이지 번호
		// 이것때문에 화살표를 누를시에 다음블록의 페이지들중 첫번째 페이지가 출력된다.
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		// 처음페이지 & 이전페이지를 위한 로직
		if (intTemp != 1) {
			pagingStr += "<a href='" + page + "nowPage=1'><span class='glyphicon glyphicon-backward'></span></a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + page + "nowPage=" + (intTemp - blockPage)
					+ "'><span class='glyphicon glyphicon-chevron-left'></span></a>";
		}
		// 페이지표시 제어를 위한 변수
		int blockCount = 1;

		// 페이지를 뿌려주는 로직 : 블럭페이지 수만큼 혹은 마지막
		// 페이지가 될때까지 페이지를 표시한다.
		while (blockCount <= blockPage && intTemp <= totalPage) {
			// 현재페이지인 경우
			pagingStr += "&nbsp;";
			if (intTemp == nowPage) {
				pagingStr += "<span style='color:red;'>" + intTemp + "</span>";
			} else {
				pagingStr += "<a href='" + page + "nowPage=" + intTemp + "'>" + intTemp + "</a>";
			}
			pagingStr += "&nbsp;";
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		}

		// 다음 및 마지막 페이지를 위한 로직
		if (intTemp <= totalPage) {
			// intTemp로 바로 넣는이유는 위에서 while문의 끝에 intTemp가 출력후 +1 되므로 블록 보다 1증가되었다.
			pagingStr += "<a href='" + page + "nowPage=" + intTemp + "'><span class='glyphicon glyphicon-chevron-right'></span></a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + page + "nowPage=" + totalPage
					+ "'><span class='glyphicon glyphicon-forward'></span></a>";
		}

		return pagingStr;
	}
}
