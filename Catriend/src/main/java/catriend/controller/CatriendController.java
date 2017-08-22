package catriend.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import catriend.command.CatCommand;
import catriend.command.CatsListCommand;
import catriend.command.FreeBoarderListCommand;

@Controller
public class CatriendController {
	//다형성을 위한
	CatCommand command;
	
	@RequestMapping("/surveyform")
	public String surveyform(Model model, HttpServletRequest req){
		return "surveyform";
	}
	@RequestMapping("/qna")
	public String qna(Model model, HttpServletRequest req){
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
	@RequestMapping("/image")
	public String image(Model model, HttpServletRequest req){
		return "image";
	}
	@RequestMapping("/catlist2")
	public String catlist2(Model model, HttpServletRequest req){
		return "catlist2";
	}
	@RequestMapping("/review2")
	public String review2(Model model, HttpServletRequest req){
		return "review2";
	}
	
}
