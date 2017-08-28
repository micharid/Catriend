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
import catriend.command.FreeBoarderListCommand;
import catriend.command.LoginCommand;
import catriend.command.QnAListCommand;
import catriend.model.Constant;
import catriend.model.UsersDTO;

@Controller
public class CatriendController {
	//Spring JDBC를 사용하기 위한 설정
		//JDBC템플릿 설정
		private JdbcTemplate template;
		//setter설정(빈이 설정되면 자동으로 됨)
		@Autowired
		public void setTemplate(JdbcTemplate template){
			this.template = template;
			Constant.template = this.template;
		}
		
		//다형성을 위한
		CatCommand command;
		
		@RequestMapping("/about")
		public String about(Model model, HttpServletRequest req){
			return "about";
		}
		@RequestMapping("/catlist")
		public String catlist(Model model, HttpServletRequest req){
			model.addAttribute("req", req);
			command = new CatsListCommand();
			command.execute(model);
			return "catlist";
		}
		@RequestMapping("/catProfile")
		public String catProfile(Model model, HttpServletRequest req){
			return "catProfile";
		}
		@RequestMapping("/boardWrite")
		public String boardWrite(Model model, HttpServletRequest req){
			return "boardWrite";
		}
		@RequestMapping("/boardList")
		public String boardList(Model model, HttpServletRequest req){
			return "boardList";
		}
		@RequestMapping("/boardView")
		public String boardView(Model model, HttpServletRequest req){
			return "boardView";
		}
		@RequestMapping("/onlineForm")
		public String onlineForm(Model model, HttpServletRequest req){
			return "onlineForm";
		}
		@RequestMapping("/contact")
		public String contact(Model model, HttpServletRequest req){
			return "contact";
		}
		
		@RequestMapping("/mainPage")
		public String mainPage(Model model, HttpServletRequest req){
			return "mainPage";
		}
		@RequestMapping("/myPage")
		public String myPage(Model model, HttpServletRequest req){
			return "myPage";
		}
		@RequestMapping("/newFile")
		public String newFile(Model model, HttpServletRequest req){
			return "newFile";
		}
		@RequestMapping("/standard")
		public String standard(Model model, HttpServletRequest req){
			return "standard";
		}
		@RequestMapping("/processing/catlistAction")
		public String catlistAction(Model model, HttpServletRequest req){
			model.addAttribute("msg", req.getParameter("msg"));
			return "processing/catlistAction";
		}
		@RequestMapping("/login")
		public String login(Model model, HttpServletRequest req, HttpSession session){
			command = new LoginCommand();
			command.execute(model);
			
			UsersDTO dto = (UsersDTO)session.getAttribute("loginUser");
			if(dto != null){
				return "redirect:mainPage";
			}
			else{
				//로그인페이지에 loginError 변수 받아서 출력해줘야한다.
				return "login";
			}
		}
}
