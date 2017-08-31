package catriend.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import catriend.command.AdminUserListCommand;
import catriend.command.CatBoarderCommentListCommand;
import catriend.command.CatBoarderDeleteCommand;
import catriend.command.CatBoarderInsertCommand;
import catriend.command.CatBoarderListCommand;
import catriend.command.CatBoarderUpdateCommand;
import catriend.command.CatBoarderViewCommand;
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
import catriend.model.CatBoarderDAO;
import catriend.model.CatBoarderDTO;
import catriend.model.Constant;
import catriend.model.FreeBoarderDAO;
import catriend.model.FreeBoarderDTO;
import catriend.model.UsersDTO;
import fileUpload.UploadFileUtils;

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
	@Autowired
	private ServletContext servletContext;
	
	//파일 업로드 경로 설정
	private String boardUploadPath;
	
	// 다형성을 위한
	CatCommand command;

	@RequestMapping("/about")
	public String about(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "about");
		return "about";
	}
	
	@RequestMapping("/catBoardList")
	public String catBoardList(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new CatBoarderListCommand();
		command.execute(model);
		return "catBoardList";
	}
	
	@RequestMapping("/catBoardView")
	public String catBoardView(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);

		command = new CatBoarderViewCommand();
		command.execute(model);

		model.addAttribute("cb_index", req.getParameter("cb_index"));
		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoardView";
	}
	
	@RequestMapping("/catBoardWrite")
	public String catBoardWrite(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);

		return "catBoardWrite";
	}
	
	@RequestMapping("/catBoardWriteAction")
	public String catBoardWriteAction(Model model, HttpServletRequest req) throws Exception {
		MultipartHttpServletRequest mf = (MultipartHttpServletRequest) req;

		String cb_fileUpload = uimageUpload(mf.getFile("cb_file")).toString();
		String[] fileStr = cb_fileUpload.split(",");

		String cb_file = fileStr[1];
		if (cb_file.contains(".") == false) {
			File f = new File(boardUploadPath + "\\" + cb_file);
			if (f.exists())
				f.delete();

			cb_file = null;
		}

		model.addAttribute("req", req);
		model.addAttribute("cb_file", cb_file);

		command = new CatBoarderInsertCommand();
		command.execute(model);
		command = new CatBoarderListCommand();
		command.execute(model);

		return "catBoardList";
	}

	@RequestMapping("/catBoardUpdate")
	public String catBoardUpadate(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("nowPage", req.getParameter("nowPage"));

		CatBoarderDAO dao = new CatBoarderDAO();
		CatBoarderDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("cb_index")));
		model.addAttribute("dto", dto);

		return "catBoardUpdate";
	}

	@RequestMapping("/catBoardUpdateAction")
	public String catBoardUpdateAction(Model model, HttpServletRequest req) throws Exception {
		model.addAttribute("pageGroup", "board");
		MultipartHttpServletRequest mf = (MultipartHttpServletRequest) req;
		// DAO에서 fb_file 가져와서 null체크
		String cb_Orifile = req.getParameter("fileName");
		String cb_file;
		String cb_fileUpload;
		String[] fileStr;
		
		// 무조건 업로드(빈값도 됨)
		cb_fileUpload = uimageUpload(mf.getFile("cb_file")).toString();
		fileStr = cb_fileUpload.split(",");
		cb_file = fileStr[1];
		
		// 이미지 첨부 없을때 들어오는 조건
		if (cb_file.contains(".") == false) {
			System.out.println("asa");
			// 기존 이미지 있을때
			if (cb_Orifile != null) {
				File f = new File(boardUploadPath + "\\" + cb_file);
				if (f.exists())
					f.delete();
				
				cb_file = cb_Orifile;
			} 
			//기존 이미지 없을때
			else {
				File f = new File(boardUploadPath + "\\" + cb_file);
				if (f.exists())
					f.delete();
				
				cb_file = cb_Orifile;
			}
		}
		//이미지 첨부있을때
		else {
			File f = new File(boardUploadPath + "\\" + cb_Orifile);
			if (f.exists())
				f.delete();
			System.out.println(cb_file+";;;;;;");
		}
		HttpSession session = req.getSession();
		UsersDTO dto = (UsersDTO) session.getAttribute("loginUser");
		String u_id = dto.getU_id();
		System.out.println(u_id);

		model.addAttribute("cb_file", cb_file);
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("u_id", u_id);
		command = new CatBoarderUpdateCommand();
		command.execute(model);
		return "redirect:/catBoardList";
	}
	
	@RequestMapping("/catBoardDelete")
	public String catBoardDelete(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new CatBoarderDeleteCommand();
		command.execute(model);

		return "redirect:/catBoardList";
	}
	
	@RequestMapping("/catlist")
	public String catlist(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "cats");
		model.addAttribute("req", req);
		command = new CatsListCommand();
		command.execute(model);
		return "catlist";
	}
	@RequestMapping("/mycatlist")
	public String mycatlist(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "cats");
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
		model.addAttribute("pageGroup", "cats");
		return "catProfile";
	}

	@RequestMapping("/freeBoardWrite")
	public String freeBoardWrite(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);

		return "freeBoardWrite";
	}

	
	public ResponseEntity<String> uimageUpload(MultipartFile file) throws Exception {

		boardUploadPath = servletContext.getRealPath("/resources/assets/img/boardImages");
		System.out.println(boardUploadPath);
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getName());
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(boardUploadPath, file.getOriginalFilename(), file.getBytes()),HttpStatus.CREATED);
		
	}
	
	@RequestMapping("/freeBoardWriteAction")
	public String freeBoardWriteAction(Model model, HttpServletRequest req) throws Exception {
		model.addAttribute("req", req);
		
		MultipartHttpServletRequest mf = (MultipartHttpServletRequest) req;
		
		
		String fb_fileUpload = uimageUpload(mf.getFile("fb_file")).toString();
		String[] fileStr = fb_fileUpload.split(",");

		String fb_title = req.getParameter("fb_title");
		String fb_content = req.getParameter("fb_content");
		String fb_file = fileStr[1];
		if(fb_file.contains(".") == false) {
			fb_file = null;
		}
		String u_id = req.getParameter("u_id");
		System.out.println(fb_title + "," + fb_content + "," + fb_file + "," + u_id);

		model.addAttribute("fb_file", fb_file);
		command = new FreeBoarderInsertCommand();
		command.execute(model);
		command = new FreeBoarderListCommand();
		command.execute(model);

		return "freeBoardList";
	}

	@RequestMapping("/freeBoardList")
	public String freeBoardList(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new FreeBoarderListCommand();
		command.execute(model);

		return "freeBoardList";
	}
	
	@RequestMapping("/freeBoardView")
	public String freeBoardView(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
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
		model.addAttribute("pageGroup", "regist");
		return "onlineForm";
	}

	@RequestMapping("/onlineFormAction")
	public String onlineFormAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "regist");
		return "onlineFormAction";
	}

	@RequestMapping("/contact")
	public String contact(Model model, HttpServletRequest req) {
		return "contact";
	}

	@RequestMapping("/mainPage")
	public String mainPage(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "main");
		return "mainPage";
	}

	@RequestMapping("/myPage")
	public String myPage(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
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
	@RequestMapping("/processing/mycatlistAction")
	public String mycatlistAction(Model model, HttpServletRequest req) {
		model.addAttribute("msg", req.getParameter("msg"));
		return "processing/mycatlistAction";
	}
	
	@RequestMapping("/myPageindex")
	public String myPageindex(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		return "myPageindex";
	}

	@RequestMapping("/mycontracthistory")
	public String mycontracthistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		return "mycontracthistory";
	}

	@RequestMapping("/myfreeboardhistory")
	public String myfreeboardhistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		return "myfreeboardhistory";
	}

	@RequestMapping("/myreviewhistory")
	public String myreviewhistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		return "myreviewhistory";
	}

	@RequestMapping("/userdeletesuccess")
	public String userdeletesuccess(Model model, HttpServletRequest req) {
		return "userdeletesuccess";
	}

	@RequestMapping("/catcontract")
	public String catcontract(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "cats");
		return "catcontract";
	}

	@RequestMapping("/loginPage")
	public String loginPage(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "login");
		return "loginPage";
	}
	
	@RequestMapping("/myqnahistory")
	public String myqnahistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		return "myqnahistory";
	}
	
	@RequestMapping("/adminPageIndex")
	public String adminPageIndex(Model model, HttpServletRequest req) {
		return "adminPageIndex";
	}
	
	@RequestMapping("/adminQnaManagement")
	public String adminQnaManagement(Model model, HttpServletRequest req) {
		return "adminQnaManagement";
	}
	
	@RequestMapping("/adminQnaView")
	public String adminQnaView(Model model, HttpServletRequest req) {
		return "adminQnaView";
	}
	
	@RequestMapping("/adminQnaWrite")
	public String adminQnaWrite(Model model, HttpServletRequest req) {
		return "adminQnaWrite";
	}
	
	@RequestMapping("/adminQnaSuccess")
	public String adminQnaSuccess(Model model, HttpServletRequest req) {
		return "adminQnaSuccess";
	}
	
	@RequestMapping("/adminFreeboardManagement")
	public String adminFreeboardManagement(Model model, HttpServletRequest req) {
		return "adminFreeboardManagement";
	}
	
	@RequestMapping("/adminReviewboardManagement")
	public String adminReviewboardManagement(Model model, HttpServletRequest req) {
		return "adminReviewboardManagement";
	}
	
	
	

	@RequestMapping("/freeBoardUpdate")
	public String freeBoardUpadate(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		FreeBoarderDAO dao = new FreeBoarderDAO();
		FreeBoarderDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("fb_index")));
		model.addAttribute("dto", dto);

		return "freeBoardUpdate";
	}

	@RequestMapping("/boardUpdateAction")
	public String boardUpdateAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		System.out.println("컨트롤 fb_title : " + req.getParameter("fb_title"));
		command = new FreeBoarderUpdateCommand();
		command.execute(model);
		return "redirect:/freeBoardList";
	}

	@RequestMapping("/freeBoardDelete")
	public String freeBoardDelete(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new FreeBoarderDeleteCommand();
		command.execute(model);

		return "redirect:/freeBoardList";
	}
	
	

	@RequestMapping("/loginAction")
	public String loginAction(Model model, HttpServletRequest req, HttpSession session) {
		model.addAttribute("pageGroup", "login");
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
		model.addAttribute("pageGroup", "regist");
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
		model.addAttribute("pageGroup", "qna");
		return "contact";
	}

	@RequestMapping("/qnaAction")
	public String qnaAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "qna");
		model.addAttribute("req", req);
		command = new QnAQInsertCommand();
		command.execute(model);
		return "contact";
	}

	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String userUpdate(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		model.addAttribute("req", req);
		command = new UsersUpdateCommand();
		command.execute(model);
		return "redirect:mainPage";
	}

	@RequestMapping("/freeBoarderCommentReply")
	public String freeBoarderCommentWrite(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
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
		model.addAttribute("pageGroup", "board");
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
		model.addAttribute("pageGroup", "board");
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
		model.addAttribute("pageGroup", "board");
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
		model.addAttribute("pageGroup", "board");
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
		model.addAttribute("pageGroup", "board");
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

	@RequestMapping("/adminUserManagement")
	public String adminUserManagement(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		model.addAttribute("req", req);
		command = new AdminUserListCommand();
		command.execute(model);

		return "adminUserManagement";
	}
}