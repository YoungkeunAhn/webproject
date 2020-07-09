package handler.manager.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.member.MemberManagerDao;

@Controller
public class ManageLoginPro implements CommandHandler{
	@Resource(name="memberManagerDao")
	private MemberManagerDao memberManagerDao;
	
	@RequestMapping("/manage_loginPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String manager_id = request.getParameter( "manager_id" );
		String manager_passwd = request.getParameter( "manager_passwd" );
		int result = memberManagerDao.check( manager_id, manager_passwd );
		
		request.setAttribute( "result", result ); 
		request.setAttribute( "manager_id", manager_id );
		
		return new ModelAndView("manager/pages/manage_loginPro");
	}
}
