package catriend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import catriend.command.CatBoarderHotListCommand;
import catriend.command.CatBoarderListCommand;
import catriend.command.CatCommand;
import catriend.command.CatsListCommand;
import catriend.command.CatsViewCommand;
import catriend.command.FreeBoarderCommentListCommand;
import catriend.command.FreeBoarderListCommand;
import catriend.command.FreeBoarderViewCommand;
import catriend.command.LoginCommand;
import catriend.command.LogoutCommand;
import catriend.command.QnAListCommand;
import catriend.model.Constant;
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

	@RequestMapping("/catlist")
	public String catlist(Model model, HttpServletRequest req) {
		model.addAttribute("req", req);
		command = new CatsListCommand();
		command.execute(model);
		return "catlist";
	}

	@RequestMapping("/catProfile")
	public String catProfile(Model model, HttpServletRequest req) {
		return "catProfile";
	}

	@RequestMapping("/boardWrite")
	public String boardWrite(Model model, HttpServletRequest req) {
		model.addAttribute("req",req);
		return "boardWrite";
	}

	@RequestMapping("/freeBoardList")
	public String freeBoardList(Model model, HttpServletRequest req) {
		model.addAttribute("req",req);
		command = new FreeBoarderListCommand();
		command.execute(model);
		return "freeBoardList";
	}
	@RequestMapping("/catBoardList")
	public String catBoardList(Model model, HttpServletRequest req) {
		model.addAttribute("req",req);
		command = new CatBoarderListCommand();
		command.execute(model);
		return "catBoardList";
	}

	@RequestMapping("/freeBoardView")
	public String freeBoardView(Model model, HttpServletRequest req) {
		model.addAttribute("req",req);
		
		command = new FreeBoarderViewCommand();
		command.execute(model);
		
		command = new FreeBoarderCommentListCommand();
		command.execute(model);
		
		return "freeBoardView";
	}

	@RequestMapping("/onlineForm")
	public String onlineForm(Model model, HttpServletRequest req) {
		return "onlineForm";
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
	@RequestMapping("/membermyPage")
	public String membermyPage(Model model, HttpServletRequest req) {
		return "membermyPage";
	}

	@RequestMapping("/membermyPageindex")
	public String membermyPageindex(Model model, HttpServletRequest req) {
		return "membermyPageindex";
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
	@RequestMapping("/loginAction")
	public String loginAction(Model model, HttpServletRequest req, HttpSession session) {
		command = new LoginCommand();
		model.addAttribute("req", req);
		command.execute(model);
		System.out.println("1");
		UsersDTO dto = (UsersDTO) session.getAttribute("loginUser") != null ? (UsersDTO) session.getAttribute("loginUser") : null;
		if (dto != null) {
			System.out.println("2");
			return "redirect:mainPage";
		} else {
			System.out.println("3");
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
		return "regist";
	}
}
