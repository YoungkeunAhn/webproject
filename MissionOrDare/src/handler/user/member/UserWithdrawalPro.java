package handler.user.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.member.UserMemberDao;

@Controller
public class UserWithdrawalPro implements CommandHandler {
	
	@Resource
	private UserMemberDao userMemberDao;
	
	@RequestMapping( "user_withdrawalPro" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int kakao_id =  (int) request.getSession().getAttribute( "kakao_id" );
		String passwd = request.getParameter( "passwd" );
		
		int resultCheck = userMemberDao.loginCheck(kakao_id);
		request.setAttribute( "resultCheck", resultCheck );
		
		if( resultCheck == 1 ) {
			int result = userMemberDao.withdrawalUp( kakao_id );
			request.setAttribute( "result", result );
		}						
		return new ModelAndView( "user/pages/user_withdrawalPro" );
	}
}
