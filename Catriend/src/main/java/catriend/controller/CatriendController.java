package catriend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import catriend.command.CatBoarderListCommand;
import catriend.command.CatCommand;
import catriend.command.CatsListCommand;
import catriend.command.FreeBoarderCommentDeleteCommand;
import catriend.command.FreeBoarderCommentInsertCommand;
import catriend.command.FreeBoarderCommentListCommand;
import catriend.command.FreeBoarderCommentReplyCommand;
import catriend.command.FreeBoarderCommentUpdateCommand;
import catriend.command.FreeBoarderDeleteCommand;
import catriend.command.FreeBoarderInsertCommand;
import catriend.command.FreeBoarderListCommand;
import catriend.command.FreeBoarderUpdateCommand;
import catriend.command.FreeBoarderViewCommand;
import catriend.command.LoginCommand;
import catriend.command.LogoutCommand;
import catriend.command.QnAQInsertCommand;
import catriend.command.UsersInsertCommand;
import catriend.command.UsersUpdateCommand;
import catriend.model.Constant;
import catriend.model.FreeBoarderDAO;
import catriend.model.FreeBoarderDTO;
import catriend.model.UsersDTO;

@Controller
public class CatriendController {
	// Spring JDBC를 사용하기 위한 설정
	// JDBC템플릿 설정
	private JdbcTemplate template;

	// setter설정(빈이 설정되면 자동으로 됨)
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}

	// 다형성을 위한
	CatCommand command;

	@RequestMapping("/about")
	public String about(Model model, HttpServletRequest req) {
		return "about";
	}
	
	@RequestMapping("/catBoardList")
	public String catBoardList(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new CatBoarderListCommand();
		command.execute(model);
		return "catBoardList";
	}
	
	@RequestMapping("/catlist")
	public String catlist(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new CatsListCommand();
		command.execute(model);
		return "catlist";
	}
	@RequestMapping("/mycatlist")
	public String mycatlist(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UsersDTO dto = (UsersDTO)session.getAttribute("loginUser");
		model.addAttribute("u_grade", dto.getU_grade());
		model.addAttribute("req", req);
		command = new CatsListCommand();
		command.execute(model);
		return "mycatlist";
	}

	@RequestMapping("/catProfile")
	public String catProfile(Model model, HttpServletRequest req) {
		return "catProfile";
	}

	@RequestMapping("/freeBoardWrite")
	public String freeBoardWrite(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);

		return "freeBoardWrite";
	}

	@RequestMapping("/freeBoardWriteAction")
	public String freeBoardWriteAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		String fb_title = req.getParameter("fb_title");
		String fb_content = req.getParameter("fb_content");
		String fb_file = req.getParameter("fb_file");
		String u_id = req.getParameter("u_id");
		System.out.println(fb_title+","+fb_content+","+fb_file+","+u_id);
		
		command = new FreeBoarderInsertCommand();
		command.execute(model);
		command = new FreeBoarderListCommand();
		command.execute(model);

		return "freeBoardList";
	}

	@RequestMapping("/freeBoardList")
	public String freeBoardList(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new FreeBoarderListCommand();
		command.execute(model);

		return "freeBoardList";
	}
	
	@RequestMapping("/freeBoardView")
	public String freeBoardView(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);

		command = new FreeBoarderViewCommand();
		command.execute(model);

		model.addAttribute("fb_index", req.getParameter("fb_index"));
		command = new FreeBoarderCommentListCommand();
		command.execute(model);

		return "freeBoardView";
	}

	@RequestMapping("/onlineForm")
	public String onlineForm(Model model, HttpServletRequest req) {
		return "onlineForm";
	}

	@RequestMapping("/onlineFormAction")
	public String onlineFormAction(Model model, HttpServletRequest req) {
		return "onlineFormAction";
	}

	@RequestMapping("/contact")
	public String contact(Model model, HttpServletRequest req) {
		return "contact";
	}

	@RequestMapping("/mainPage")
	public String mainPage(Model model, HttpServletRequest req) {
		return "mainPage";
	}

	@RequestMapping("/myPage")
	public String myPage(Model model, HttpServletRequest req) {
		return "myPage";
	}

	@RequestMapping("/newFile")
	public String newFile(Model model, HttpServletRequest req) {
		return "newFile";
	}

	@RequestMapping("/standard")
	public String standard(Model model, HttpServletRequest req) {
		return "standard";
	}

	@RequestMapping("/processing/catlistAction")
	public String catlistAction(Model model, HttpServletRequest req) {
		model.addAttribute("msg", req.getParameter("msg"));
		return "processing/catlistAction";
	}

	@RequestMapping("/myPageindex")
	public String myPageindex(Model model, HttpServletRequest req) {
		return "myPageindex";
	}

	@RequestMapping("/mycontracthistory")
	public String mycontracthistory(Model model, HttpServletRequest req) {
		return "mycontracthistory";
	}

	@RequestMapping("/myfreeboardhistory")
	public String myfreeboardhistory(Model model, HttpServletRequest req) {
		return "myfreeboardhistory";
	}

	@RequestMapping("/myreviewhistory")
	public String myreviewhistory(Model model, HttpServletRequest req) {
		return "myreviewhistory";
	}

	@RequestMapping("/userdeletesuccess")
	public String userdeletesuccess(Model model, HttpServletRequest req) {
		return "userdeletesuccess";
	}

	@RequestMapping("/catcontract")
	public String catcontract(Model model, HttpServletRequest req) {
		return "catcontract";
	}

	@RequestMapping("/loginPage")
	public String loginPage(Model model, HttpServletRequest req) {
		return "loginPage";
	}

	@RequestMapping("/freeBoardUpdate")
	public String freeBoardUpadate(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		FreeBoarderDAO dao = new FreeBoarderDAO();
		FreeBoarderDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("fb_index")));
		model.addAttribute("dto", dto);

		return "freeBoardUpdate";
	}

	@RequestMapping("/boardUpdateAction")
	public String boardUpdateAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		System.out.println("컨트롤 fb_title : " + req.getParameter("fb_title"));
		command = new FreeBoarderUpdateCommand();
		command.execute(model);
		return "redirect:/freeBoardList";
	}

	@RequestMapping("/freeBoardDelete")
	public String freeBoardDelete(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new FreeBoarderDeleteCommand();
		command.execute(model);

		return "redirect:/freeBoardList";
	}

	@RequestMapping("/loginAction")
	public String loginAction(Model model, HttpServletRequest req, HttpSession session) {
		command = new LoginCommand();
		model.addAttribute("req", req);
		command.execute(model);
		UsersDTO dto = (UsersDTO) session.getAttribute("loginUser") != null
				? (UsersDTO) session.getAttribute("loginUser") : null;
		if (dto != null) {
			return "redirect:mainPage";
		} else {
			// 로그인페이지에 loginError 변수 받아서 출력해줘야한다.
			return "loginPage";
		}
	}

	@RequestMapping("/logoutAction")
	public String logoutAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new LogoutCommand();
		command.execute(model);

		return "redirect:mainPage";
	}

	@RequestMapping("/regist")
	public String regist(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		System.out.println("컨트롤러 u_grade : " + req.getParameter("u_grade"));
		model.addAttribute("u_grade", req.getParameter("u_grade"));
		return "regist";
	}

	@RequestMapping("registAction")
	public String registAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new UsersInsertCommand();
		command.execute(model);
		return "mainPage";
	}

	@RequestMapping("/qna")
	public String QnA(Model model, HttpServletRequest req) {
		return "contact";
	}

	@RequestMapping("/qnaAction")
	public String qnaAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new QnAQInsertCommand();
		command.execute(model);
		return "contact";
	}

	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String userUpdate(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new UsersUpdateCommand();
		command.execute(model);
		return "redirect:mainPage";
	}

	@RequestMapping("/freeBoarderCommentReply")
	public String freeBoarderCommentWrite(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("fbc_index", req.getParameter("fbc_index"));
		command = new FreeBoarderViewCommand();
		command.execute(model);

		command = new FreeBoarderCommentListCommand();
		command.execute(model);
		return "freeBoarderCommentReply";
	}

	@RequestMapping("/freeBoarderCommentReplyAction")
	public String freeBoarderCommentReplyAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("fbc_index", req.getParameter("fbc_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("fbc_content", req.getParameter("fbc_content"));
		command = new FreeBoarderCommentReplyCommand();
		command.execute(model);

		command = new FreeBoarderViewCommand();
		command.execute(model);

		model.addAttribute("fb_index", req.getParameter("fb_index"));
		command = new FreeBoarderCommentListCommand();
		command.execute(model);

		return "freeBoardView";
	}

	@RequestMapping("/freeBoarderCommentWriteAction")
	public String freeBoarderCommentWriteAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("fbc_content", req.getParameter("fbc_content"));
		model.addAttribute("u_id", req.getParameter("u_id"));

		command = new FreeBoarderCommentInsertCommand();
		command.execute(model);

		command = new FreeBoarderViewCommand();
		command.execute(model);

		command = new FreeBoarderCommentListCommand();
		command.execute(model);

		return "freeBoardView";
	}

	@RequestMapping("/freeBoarderCommentDelete")
	public String freeBoarderCommentDelete(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("u_id", req.getParameter("u_id"));

		command = new FreeBoarderCommentDeleteCommand();
		command.execute(model);

		command = new FreeBoarderViewCommand();
		command.execute(model);

		command = new FreeBoarderCommentListCommand();
		command.execute(model);

		return "freeBoardView";
	}

	@RequestMapping("/freeBoarderCommentUpdate")
	public String freeBoarderCommentUpdate(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("u_id", req.getParameter("u_id"));
		model.addAttribute("fbc_index", req.getParameter("fbc_index"));

		command = new FreeBoarderViewCommand();
		command.execute(model);

		command = new FreeBoarderCommentListCommand();
		command.execute(model);

		return "freeBoarderCommentUpdate";
	}

	@RequestMapping("/freeBoarderCommentUpdateAction")
	public String freeBoarderCommentUpdateAction(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("fbc_content", req.getParameter("fbc_content"));
		model.addAttribute("u_id", req.getParameter("u_id"));

		command = new FreeBoarderCommentUpdateCommand();
		command.execute(model);

		command = new FreeBoarderViewCommand();
		command.execute(model);

		command = new FreeBoarderCommentListCommand();
		command.execute(model);

		return "freeBoardView";
	}
}