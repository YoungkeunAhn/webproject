package handler.user.missionsuccessboard;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.successboard.UserSuccessBoardDao;

@Controller
public class PublicAvailability implements CommandHandler{
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/publicAvailability")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		String success_board_id = request.getParameter("success_board_id");
		
		userSuccessBoardDao.availability(success_board_id);
		
	
		return new ModelAndView("user/pages/publicAvailability");
	}
	
}
