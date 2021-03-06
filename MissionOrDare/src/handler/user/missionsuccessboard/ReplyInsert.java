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
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		String reply_id = request.getParameter("reply_id");
		System.out.println(reply_id);
		String reply_contents = request.getParameter("reply_contents");
		String success_board_id = request.getParameter("success_board_id");

		ReplyDto replyDto = new ReplyDto();
		replyDto.setReply_contents(reply_contents);
		replyDto.setUser_nickname(user_nickname);
		replyDto.setSuccess_board_id(success_board_id);
		System.out.println(reply_contents.charAt(0));
		if(reply_contents.charAt(0) == '@'){
			int reference = userSuccessBoardDao.getRef(reply_id);
			replyDto.setReference(reference);
			replyDto.setReply_step(1);
			int result = userSuccessBoardDao.rereplyInsert(replyDto);
			request.setAttribute("result", result);
		} else {
			int result = userSuccessBoardDao.replyInsert(replyDto);
			request.setAttribute("result", result);
		}
		
		return new ModelAndView("user/pages/replyInsert");
	}

}	
