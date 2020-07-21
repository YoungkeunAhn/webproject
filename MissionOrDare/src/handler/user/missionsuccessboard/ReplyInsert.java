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
public class ReplyInsert implements CommandHandler{
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/replyInsert")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		String reply_contents = request.getParameter("reply_contents");
		String success_board_id = request.getParameter("success_board_id");

		
		ReplyDto replyDto = new ReplyDto();
		replyDto.setReply_contents(reply_contents);
		replyDto.setUser_nickname(user_nickname);
		replyDto.setSuccess_board_id(success_board_id);
		int result = userSuccessBoardDao.replyInsert(replyDto);
		
		
		request.setAttribute("result", result);
		return new ModelAndView("user/pages/replyInsert");
	}

}
