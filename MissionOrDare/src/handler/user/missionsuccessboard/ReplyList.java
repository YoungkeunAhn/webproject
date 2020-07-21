package handler.user.missionsuccessboard;

import java.util.List;

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
public class ReplyList implements CommandHandler{
	
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/replyList")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String success_board_id = request.getParameter("success_board_id");
		System.out.println("success_board_id(핸들러)" +success_board_id);
		
		List<ReplyDto> replyDtos = userSuccessBoardDao.replyList(success_board_id);
		
		
		request.setAttribute("replyDtos", replyDtos);
		return new ModelAndView("user/pages/replyList");
	}

}
