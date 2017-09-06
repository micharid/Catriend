package catriend.controller;

import java.io.File;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import catriend.command.AdminCatListCommand;
import catriend.command.AdminFreeBoardListCommand;
import catriend.command.AdminQnaListCommand;
import catriend.command.AdminQnaReplyCommand;
import catriend.command.AdminQnaViewCommand;
import catriend.command.AdminReviewListCommand;
import catriend.command.AdminUserListCommand;
import catriend.command.CatBoarderCommentDeleteCommand;
import catriend.command.CatBoarderCommentInsertCommand;
import catriend.command.CatBoarderCommentListCommand;
import catriend.command.CatBoarderCommentReplyCommand;
import catriend.command.CatBoarderCommentUpdateCommand;
import catriend.command.CatBoarderDeleteCommand;
import catriend.command.CatBoarderHotListCommand;
import catriend.command.CatBoarderInsertCommand;
import catriend.command.CatBoarderLikeRemoveCommand;
import catriend.command.CatBoarderLikeUpCommand;
import catriend.command.CatBoarderListCommand;
import catriend.command.CatBoarderUpdateCommand;
import catriend.command.CatBoarderViewCommand;
import catriend.command.CatBoardsDeletesCommand;
import catriend.command.CatCommand;
import catriend.command.CatContractListCommand;
import catriend.command.CatsDeletesCommand;
import catriend.command.CatsListCommand;
import catriend.command.CatsViewCommand;
import catriend.command.ContractInsertCommand;
import catriend.command.ContractListCommand;
import catriend.command.ContractSelectCheckCommand;
import catriend.command.FreeBoarderCommentDeleteCommand;
import catriend.command.FreeBoarderCommentInsertCommand;
import catriend.command.FreeBoarderCommentListCommand;
import catriend.command.FreeBoarderCommentReplyCommand;
import catriend.command.FreeBoarderCommentUpdateCommand;
import catriend.command.FreeBoarderDeleteCommand;
import catriend.command.FreeBoarderHotListCommand;
import catriend.command.FreeBoarderInsertCommand;
import catriend.command.FreeBoarderLikeRemoveCommand;
import catriend.command.FreeBoarderLikeUpCommand;
import catriend.command.FreeBoarderListCommand;
import catriend.command.FreeBoarderUpdateCommand;
import catriend.command.FreeBoarderViewCommand;
import catriend.command.FreeBoardsDeletesCommand;
import catriend.command.LoginCommand;
import catriend.command.LogoutCommand;
import catriend.command.MyQnaViewCommand;
import catriend.command.UserQnaListCommand;
import catriend.command.UsersDeletesCommand;
import catriend.command.QnAQInsertCommand;
import catriend.command.QnAsDeletesCommand;
import catriend.command.UsersInsertCommand;
import catriend.command.UsersUpdateCommand;
import catriend.command.myCatBoardhistoryCommand;
import catriend.command.myFreeBoardhistoryCommand;
import catriend.model.CatBoarderDAO;
import catriend.model.CatBoarderDTO;
import catriend.model.CatsDAO;
import catriend.model.CatsDTO;
import catriend.model.Constant;
import catriend.model.FreeBoarderDAO;
import catriend.model.FreeBoarderDTO;
import catriend.model.UsersDAO;
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

	// 파일 업로드 경로 설정
	private String boardUploadPath;

	// 다형성을 위한
	CatCommand command;
	
	@Autowired
	private JavaMailSender mailSender;
	
	private String from ="kjs34160@gmail.com";
	private String subject ="안녕하세요 캣랜드 입니다.";
	
	@RequestMapping(value = "/mail")
	public String sendMail(Model model,HttpServletRequest req){
		UsersDAO dao = new UsersDAO();
		UsersDTO user = dao.selectOne(req.getParameter("u_id"));
		
		try{
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setTo(user.getU_email());//받는 이메일에다가 보내기
			messageHelper.setText("귀하의 변경된 비밀번호는 "+user.getU_pw()+"입니다.");//내용
			messageHelper.setFrom(from);
			messageHelper.setSubject("안녕하세요 캣랜드 입니다.");
			
			mailSender.send(message);
		}
		catch(Exception e){
			System.out.println(e);
		}
		
		model.addAttribute("pageGroup", "main");
		CatCommand command = new CatBoarderHotListCommand();
		command.execute(model);
		
		return "mainPage";
	}
	
	@RequestMapping("/processing/emailsend")
	public String emailsend(Model model, HttpServletRequest req) {
		System.out.print("email값 : " +req.getParameter("email"));
		
		UsersDAO dao = new UsersDAO();
		System.out.println(req.getParameter("email"));
		
		int result = dao.passUpdate(req.getParameter("id"));
		System.out.println("결과값: " + result);
		model.addAttribute("result", result);
		return "processing/emailsend";
	}

	
	@RequestMapping("/processing/findEqualCheck")
	public String findEqualCheck(Model model, HttpServletRequest req) {
		System.out.print("email값 : " +req.getParameter("email"));
		
		UsersDAO dao = new UsersDAO();
		System.out.println(req.getParameter("email"));
		
		int result = dao.userEqual3(req.getParameter("id"),req.getParameter("email"));
		System.out.println("결과값: " + result);
		model.addAttribute("result", result);
		return "processing/findEqualCheck";
	}
	
	
	@RequestMapping("/processing/findEmailCheck")
	public String findEmailCheck(Model model, HttpServletRequest req) {
		System.out.print("email값 : " +req.getParameter("email"));
		
		UsersDAO dao = new UsersDAO();
		System.out.println(req.getParameter("email"));
		int result = dao.userEqual2(req.getParameter("email"));
		System.out.println("결과값: " + result);
		model.addAttribute("result", result);
		return "processing/findEmailCheck";
	}
	
	@RequestMapping("/processing/findIdCheck")
	public String findIdCheck(Model model, HttpServletRequest req) {
		UsersDAO dao = new UsersDAO();
		System.out.println(req.getParameter("id"));
		int result = dao.userEqual(req.getParameter("id"));
		System.out.println("결과값: " + result);
		model.addAttribute("result", result);
		return "processing/findIdCheck";
	}
	
	@RequestMapping("/findPass")
	public String findPass(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "login");
		return "findPass";
	}
	@RequestMapping("/about")
	public String about(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "about");
		return "about";
	}

	@RequestMapping("/catBoardList")
	public String catBoardList(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		System.out.println("컨트롤러 검색어 : " + req.getParameter("searchWord"));
		model.addAttribute(req);
		command = new CatBoarderListCommand();
		command.execute(model);

		command = new FreeBoarderHotListCommand();
		command.execute(model);

		command = new CatBoarderHotListCommand();
		command.execute(model);
		return "catBoardList";
	}

	@RequestMapping("/catBoardView")
	public String catBoardView(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		
		command = new CatBoarderViewCommand();
		command.execute(model);
		
		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoardView";
	}
	
	@RequestMapping("/catBoardlikeUpAction")
	public String catBoardlikeUpAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("u_id", req.getParameter("u_id"));
		
		command = new CatBoarderLikeUpCommand();
		command.execute(model);
		
		command = new CatBoarderViewCommand();
		command.execute(model);
		
		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoardView";
	}
	
	@RequestMapping("/catBoardlikeRemoveAction")
	public String catBoardlikeRemoveAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("u_id", req.getParameter("u_id"));
		model.addAttribute("cb_like", req.getParameter("cb_like"));
		
		command = new CatBoarderLikeRemoveCommand();
		command.execute(model);
		
		command = new CatBoarderViewCommand();
		command.execute(model);
		
		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoardView";
	}
	
	@RequestMapping("/catcontractpaypage")
	public String catcontractpaypage(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "cats");
		model.addAttribute("req", req);
		model.addAttribute("c_index", req.getParameter("c_index"));
		command = new CatsViewCommand();
		command.execute(model);

		command = new CatContractListCommand();
		command.execute(model);

		return "catcontractpaypage";
	}

	@RequestMapping("/contractAction")
	public String contractAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "cats");
		model.addAttribute("req", req);
		command = new ContractInsertCommand();
		command.execute(model);
		
		HttpSession session = req.getSession();
		UsersDTO dto = (UsersDTO)session.getAttribute("loginUser");
		UsersDAO dao = new UsersDAO();
		//등급 증가
		dao.gradeUp(dto.getU_id());
		
		return "catcontractsuccess";
	}

	@RequestMapping("/catcontractagreement")
	public String catcontractagreement(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "cats");
		model.addAttribute("c_index", req.getParameter("c_index"));
		return "catcontractagreement";
	}

	@RequestMapping("/catcontractsuccess")
	public String catcontractsuccess(Model model, HttpServletRequest req) {
		return "catcontractsuccess";
	}

	@RequestMapping("/catBoarderCommentReply")
	public String catBoarderCommentReply(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("cbc_index", req.getParameter("cbc_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		command = new CatBoarderViewCommand();
		command.execute(model);

		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoarderCommentReply";
	}

	@RequestMapping("/catBoarderCommentReplyAction")
	public String catBoarderCommentReplyAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("cbc_index", req.getParameter("cbc_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("cbc_content", req.getParameter("cbc_content"));
		command = new CatBoarderCommentReplyCommand();
		command.execute(model);

		command = new CatBoarderViewCommand();
		command.execute(model);

		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoardView";
	}

	@RequestMapping("/catBoarderCommentWriteAction")
	public String catBoarderCommentWriteAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("cbc_content", req.getParameter("cbc_content"));
		model.addAttribute("u_id", req.getParameter("u_id"));

		command = new CatBoarderCommentInsertCommand();
		command.execute(model);

		command = new CatBoarderViewCommand();
		command.execute(model);

		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoardView";
	}

	@RequestMapping("/catBoarderCommentDelete")
	public String catBoarderCommentDelete(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("u_id", req.getParameter("u_id"));

		command = new CatBoarderCommentDeleteCommand();
		command.execute(model);

		command = new CatBoarderViewCommand();
		command.execute(model);

		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoardView";
	}

	@RequestMapping("/catBoarderCommentUpdate")
	public String catBoarderCommentUpdate(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("u_id", req.getParameter("u_id"));
		model.addAttribute("cbc_index", req.getParameter("cbc_index"));

		command = new CatBoarderViewCommand();
		command.execute(model);

		command = new CatBoarderCommentListCommand();
		command.execute(model);

		return "catBoarderCommentUpdate";
	}

	@RequestMapping("/catBoarderCommentUpdateAction")
	public String catBoarderCommentUpdateAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("cb_index", req.getParameter("cb_index"));
		model.addAttribute("nowPage", req.getParameter("nowPage"));
		model.addAttribute("cbc_content", req.getParameter("cbc_content"));
		model.addAttribute("u_id", req.getParameter("u_id"));

		command = new CatBoarderCommentUpdateCommand();
		command.execute(model);

		command = new CatBoarderViewCommand();
		command.execute(model);

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
			// 기존 이미지 없을때
			else {
				File f = new File(boardUploadPath + "\\" + cb_file);
				if (f.exists())
					f.delete();

				cb_file = cb_Orifile;
			}
		}
		// 이미지 첨부있을때
		else {
			File f = new File(boardUploadPath + "\\" + cb_Orifile);
			if (f.exists())
				f.delete();
			System.out.println(cb_file + ";;;;;;");
		}
		HttpSession session = req.getSession();
		UsersDTO dto = (UsersDTO) session.getAttribute("loginUser");
		String u_id = dto.getU_id();
		System.out.println(u_id);

		model.addAttribute("nowPage", req.getParameter("nowPage"));
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
		model.addAttribute("nowPage", req.getParameter("nowPage"));
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
		UsersDTO dto = (UsersDTO) session.getAttribute("loginUser");
		model.addAttribute("u_grade", dto.getU_grade());
		model.addAttribute("req", req);
		command = new CatsListCommand();
		command.execute(model);
		return "mycatlist";
	}

	@RequestMapping("/catProfile")
	public String catProfile(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "cats");
		model.addAttribute("req", req);
		command = new ContractSelectCheckCommand();
		command.execute(model);

		CatsDAO dao = new CatsDAO();
		CatsDTO dto = dao.selectOne(Integer.parseInt(req.getParameter("c_index")));
		System.out.println("캣 프로필 dto 불러 오기 : " + dto.getC_index());

		model.addAttribute("dto", dto);
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

		return new ResponseEntity<String>(
				UploadFileUtils.uploadFile(boardUploadPath, file.getOriginalFilename(), file.getBytes()),
				HttpStatus.CREATED);

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
		if (fb_file.contains(".") == false) {
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

		command = new FreeBoarderHotListCommand();
		command.execute(model);

		command = new CatBoarderHotListCommand();
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
	
	@RequestMapping("/freeBoardlikeUpAction")
	public String likeUpAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("u_id", req.getParameter("u_id"));
		
		command = new FreeBoarderLikeUpCommand();
		command.execute(model);
		
		command = new FreeBoarderViewCommand();
		command.execute(model);

		command = new FreeBoarderCommentListCommand();
		command.execute(model);

		return "freeBoardView";
	}
	
	@RequestMapping("/freeBoardlikeRemoveAction")
	public String likeRemoveAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		model.addAttribute("fb_index", req.getParameter("fb_index"));
		model.addAttribute("u_id", req.getParameter("u_id"));
		model.addAttribute("fb_like", req.getParameter("fb_like"));
		
		command = new FreeBoarderLikeRemoveCommand();
		command.execute(model);
		
		command = new FreeBoarderViewCommand();
		command.execute(model);

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
		CatCommand command = new CatBoarderHotListCommand();
		command.execute(model);
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
		System.out.println("myPageindex");
		return "myPageindex";
	}

	@RequestMapping("/mycontracthistory")
	public String mycontracthistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		model.addAttribute("req", req);
		HttpSession session = req.getSession();
		UsersDTO user = (UsersDTO) session.getAttribute("loginUser");
		model.addAttribute("u_id", user.getU_id());
		System.out.println("1");
		command = new ContractListCommand();
		command.execute(model);
		return "mycontracthistory";
	}

	@RequestMapping("/myfreeboardhistory")
	public String myfreeboardhistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		model.addAttribute("req", req);

		HttpSession session = req.getSession();
		UsersDTO user = (UsersDTO) session.getAttribute("loginUser");
		model.addAttribute("u_id", user.getU_id());

		command = new myFreeBoardhistoryCommand();
		command.execute(model);
		return "myfreeboardhistory";
	}

	@RequestMapping("/mycatboardhistory")
	public String myreviewhistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		command = new myCatBoardhistoryCommand();
		command.execute(model);
		return "mycatboardhistory";
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

	@RequestMapping("/adminPageIndex")
	public String adminPageIndex(Model model, HttpServletRequest req) {
		return "adminPageIndex";
	}

	@RequestMapping("/adminQnaWrite")
	public String adminQnaWrite(Model model, HttpServletRequest req) {
		return "adminQnaWrite";
	}

	@RequestMapping("/adminQnaSuccess")
	public String adminQnaSuccess(Model model, HttpServletRequest req) {
		return "adminQnaSuccess";
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
	
	@RequestMapping("/catBoardsDeletes")
	public String catBoardsDeletes(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new CatBoardsDeletesCommand();
		command.execute(model);

		return "redirect:/adminReviewboardManagement";
	}
	
	@RequestMapping("/freeBoardsDeletes")
	public String freeBoardsDeletes(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new FreeBoardsDeletesCommand();
		command.execute(model);

		return "redirect:/adminFreeboardManagement";
	}
	
	@RequestMapping("/qnasDeletes")
	public String qnasDeletes(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new QnAsDeletesCommand();
		command.execute(model);

		return "redirect:/adminQnaManagement";
	}
	
	@RequestMapping("/usersDeletes")
	public String usersDeletes(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new UsersDeletesCommand();
		command.execute(model);

		return "redirect:/adminUserManagement";
	}
	
	@RequestMapping("/catsDeletes")
	public String catsDeletes(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new CatsDeletesCommand();
		command.execute(model);

		return "redirect:/adminCatManagement";
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
		System.out.println(req.getParameter("u_id") + req.getParameter("u_name") + req.getParameter("u_birthday")
				+ req.getParameter("u_phonenumber") + req.getParameter("u_nickname") + req.getParameter("u_pw")
				+ req.getParameter("u_grade"));
		command = new UsersInsertCommand();
		command.execute(model);
		return "redirect:loginPage";
	}

	@RequestMapping("/processing/registcheck")
	public String registcheck(Model model, HttpServletRequest req) {
		UsersDAO dao = new UsersDAO();
		System.out.println(req.getParameter("id"));
		int result = dao.userEqual(req.getParameter("id"));
		System.out.println("결과값: " + result);
		model.addAttribute("result", result);
		return "processing/registcheck";
	}

	@RequestMapping("/processing/nickCheck")
	public String nickCheck(Model model, HttpServletRequest req) {
		UsersDAO dao = new UsersDAO();
		System.out.println("닉네임 : " + req.getParameter("nickname"));
		int resultSet = dao.nickEqual(req.getParameter("nickname"));

		System.out.println("결과값: " + resultSet);
		model.addAttribute("resultSet", resultSet);
		return "processing/nickCheck";
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
	public String freeBoarderCommentReply(Model model, HttpServletRequest req) {
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

	@RequestMapping("/myqnahistory")
	public String myqnahistory(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "myInfo");
		model.addAttribute("req", req);

		HttpSession session = req.getSession();
		UsersDTO dto = (UsersDTO) session.getAttribute("loginUser");
		String u_id = dto.getU_id();
		model.addAttribute("u_id", u_id);
		command = new UserQnaListCommand();
		command.execute(model);

		return "myqnahistory";
	}

	@RequestMapping("/adminFreeboardManagement")
	public String adminFreeboardManagement(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new AdminFreeBoardListCommand();
		command.execute(model);

		return "adminFreeboardManagement";
	}

	@RequestMapping("/adminReviewboardManagement")
	public String adminReviewboardManagement(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new AdminReviewListCommand();
		command.execute(model);
		return "adminReviewboardManagement";
	}

	@RequestMapping("/adminQnaManagement")
	public String adminQnaManagement(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "board");
		model.addAttribute("req", req);
		command = new AdminQnaListCommand();
		command.execute(model);

		return "adminQnaManagement";
	}

	@RequestMapping("/adminCatManagement")
	public String adminCatManagement(Model model, HttpServletRequest req) {
		System.out.println("컨트롤1 sort : " + req.getParameter("sort"));
		model.addAttribute("pageGroup", "cats");
		model.addAttribute("req", req);
		model.addAttribute("sort", req.getParameter("sort"));
		command = new AdminCatListCommand();
		command.execute(model);
		System.out.println("컨트롤2 sort : " + req.getParameter("sort"));
		return "adminCatManagement";
	}
	
	@RequestMapping("/myqnaview")
	public String myqnaview(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "qna");
		model.addAttribute("req", req);
		command = new MyQnaViewCommand();
		command.execute(model);

		return "myqnaview";
	}
	
	@RequestMapping("/qnaReplyAction")
	public String qnaReplyAction(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "qna");
		model.addAttribute("req", req);
		command = new AdminQnaReplyCommand();
		command.execute(model);
		
		command = new AdminQnaListCommand();
		command.execute(model);

		return "adminQnaManagement";
	}
	
	@RequestMapping("/adminQnaView")
	public String adminQnaView(Model model, HttpServletRequest req) {
		model.addAttribute("pageGroup", "qna");
		model.addAttribute("req", req);
		command = new AdminQnaViewCommand();
		command.execute(model);

		return "adminQnaView";
	}
}