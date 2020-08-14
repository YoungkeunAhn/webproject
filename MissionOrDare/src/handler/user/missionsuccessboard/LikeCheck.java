package handler.user.missionsuccessboard;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.LikeDto;
import handler.CommandHandler;
import user.successboard.UserSuccessBoardDao;

@Controller
public class LikeCheck implements CommandHandler{
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/likeCheck")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		System.out.println("핸들러 오나?? 오너라~오너라~ 아주오나~");
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		String success_board_id = request.getParameter("success_board_id");
		LikeDto likeDto = new LikeDto() ; 
		System.out.println("likecheck1 : " + success_board_id);
		likeDto.setSuccess_board_id(success_board_id);
		likeDto.setUser_nickname(user_nickname);
		int like  = userSuccessBoardDao.checkLike(likeDto);
		System.out.println("likecheck2 : " + success_board_id);
		
		if(like != 0) { //좋아요가 눌려 있는 상태
			userSuccessBoardDao.deleteLike(likeDto);
			int result = userSuccessBoardDao.checkLike(likeDto);
			request.setAttribute("result", result);
			userSuccessBoardDao.updateLike(success_board_id);
			
		}else { //좋아요가 안 눌려진 상태
			userSuccessBoardDao.insertLike(likeDto);
			int result = userSuccessBoardDao.checkLike(likeDto);
			request.setAttribute("result", result);
			userSuccessBoardDao.updateLike(success_board_id);

		}
		
		int likeCount = userSuccessBoardDao.selectLikeCount(success_board_id);
		request.setAttribute("likeCount", likeCount);
		
		
		return new ModelAndView("user/pages/likeCheck");
	}
}
