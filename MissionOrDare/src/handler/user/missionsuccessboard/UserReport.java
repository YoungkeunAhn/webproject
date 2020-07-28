package handler.user.missionsuccessboard;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.ReplyDto;
import handler.CommandHandler;
import user.successboard.UserSuccessBoardDao;

@Controller
public class UserReport implements CommandHandler{
	
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	@RequestMapping("/user_report")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String success_board_id = request.getParameter("success_board_id");
		String reported_reply_id = request.getParameter("reply_id");
		
		
		
		if(reported_reply_id == null) {
	
			String reported_nickname = userSuccessBoardDao.selectBoard(success_board_id);
			request.setAttribute("success_board_id", success_board_id);
			request.setAttribute("reported_nickname", reported_nickname);
		}else {
			ReplyDto replyDto = userSuccessBoardDao.selectInfo(reported_reply_id);
			String reported_nickname = replyDto.getUser_nickname();
			
			request.setAttribute("reported_nickname", reported_nickname);
			request.setAttribute("reported_reply_id", reported_reply_id);
			request.setAttribute("success_board_id", success_board_id);
		}
	
		return new ModelAndView("user/pages/user_report");
	}
}