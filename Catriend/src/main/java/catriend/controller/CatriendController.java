package catriend.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import catriend.command.CatBoarderHotListCommand;
import catriend.command.CatBoarderListCommand;
import catriend.command.CatCommand;
import catriend.command.CatsListCommand;
import catriend.command.FreeBoarderListCommand;
import catriend.command.QnAListCommand;
import catriend.command.registActionCommend;
import catriend.model.Constant;

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
	
	@RequestMapping("/surveyform")
	public String surveyform(Model model, HttpServletRequest req){
		return "surveyform";
	}
	@RequestMapping("/qna")
	public String qna(Model model, HttpServletRequest req){
		model.addAttribute("req", req);
		command = new QnAListCommand();
		command.execute(model);
		return "qna";
	}
	@RequestMapping("/catlist")
	public String catlist(Model model, HttpServletRequest req){
		model.addAttribute("req", req);
		command = new CatsListCommand();
		command.execute(model);
		return "catlist";
	}
	@RequestMapping("/about")
	public String about(Model model, HttpServletRequest req){
		return "about";
	}
	@RequestMapping("/BoardList")
	public String BoardList(Model model, HttpServletRequest req){
		model.addAttribute("req", req);
		command = new FreeBoarderListCommand();
		command.execute(model);
		return "BoardList";
	}
	@RequestMapping("/company")
	public String company(Model model, HttpServletRequest req){
		return "company";
	}
	@RequestMapping("/door")
	public String door(Model model, HttpServletRequest req){
		return "door";
	}
	@RequestMapping("/login")
	public String login(Model model, HttpServletRequest req){
		return "login";
	}
	@RequestMapping("/provision")
	public String provision(Model model, HttpServletRequest req){
		return "provision";
	}
	@RequestMapping("/regist")
	public String regist(Model model, HttpServletRequest req){
		return "regist";
	}
	@RequestMapping("/registAction")
	public String registAction(Model model, HttpServletRequest req) throws Exception{
		model.addAttribute("req", req);
		registActionCommend command = new registActionCommend();
		command.userInsert(model);
		return "redirect:door";
	}
	@RequestMapping("/image")
	public String image(Model model, HttpServletRequest req){
		model.addAttribute("req", req);
		command = new CatBoarderHotListCommand();
		command.execute(model);
		return "image";
	}
	@RequestMapping("/catlist2")
	public String catlist2(Model model, HttpServletRequest req){
		return "catlist2";
	}
	@RequestMapping("/review2")
	public String review2(Model model, HttpServletRequest req){
		model.addAttribute("req", req);
		command = new CatBoarderListCommand();
		command.execute(model);
		return "review2";
	}
	@RequestMapping("/processing/catlistAction")
	public String catlistAction(Model model, HttpServletRequest req){
		model.addAttribute("msg", req.getParameter("msg"));
		return "processing/catlistAction";
	}
	@RequestMapping("/catcontractpage")
	public String catcontractpage(Model model, HttpServletRequest req){
		return "catcontractpage";
	}
	@RequestMapping("/memberfreeboard")
	public String memberfreeboard(Model model, HttpServletRequest req){
		return "memberfreeboard";
	}
}
