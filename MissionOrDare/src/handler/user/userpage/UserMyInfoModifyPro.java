package handler.user.userpage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UsersDto;
import handler.CommandHandler;
import user.userpage.UserUserPageDao;

@Controller
public class UserMyInfoModifyPro implements CommandHandler{
	
	@Resource
	private UserUserPageDao userUserPageDao;
	@RequestMapping("/user_myInfoModifyPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		int kakao_id = (int) request.getSession().getAttribute("kakao_id");
		String user_nickname = request.getParameter("user_nickname");
		String user_passwd = request.getParameter("user_passwd");
		String date_of_birth = request.getParameter("user_birth");
		String job = request.getParameter("user_job");
		String location = request.getParameter("user_location");
		String categorys = request.getParameter("interesting_categorys");
		String[] category = categorys.split("/");
		
		UsersDto usersDto = new UsersDto();
		usersDto.setUser_passwd(user_passwd);
		usersDto.setDate_of_birth(date_of_birth);
		usersDto.setJob(job);
		usersDto.setLocation(location);
		usersDto.setUser_nickname(user_nickname);
		usersDto.setKakao_id(kakao_id);
		
		if(category.length==4) {
			String interesting1_large_category = category[0];
			String interesting2_large_category = category[1];
			String interesting3_large_category = category[2];
			String interesting4_large_category = category[3];
			usersDto.setInteresting1_large_category(interesting1_large_category);
			usersDto.setInteresting2_large_category(interesting2_large_category);
			usersDto.setInteresting3_large_category(interesting3_large_category);
			usersDto.setInteresting4_large_category(interesting4_large_category);
		}else if(category.length==3) {
			String interesting1_large_category = category[0];
			String interesting2_large_category = category[1];
			String interesting3_large_category = category[2];
			usersDto.setInteresting1_large_category(interesting1_large_category);
			usersDto.setInteresting2_large_category(interesting2_large_category);
			usersDto.setInteresting3_large_category(interesting3_large_category);
		}else if(category.length==2) {
			String interesting1_large_category = category[0];
			String interesting2_large_category = category[1];
			usersDto.setInteresting1_large_category(interesting1_large_category);
			usersDto.setInteresting2_large_category(interesting2_large_category);
		}else if(category.length==1) {
			String interesting1_large_category = category[0];
			usersDto.setInteresting1_large_category(interesting1_large_category);
		}
		
		
		int result = userUserPageDao.userModify(usersDto);
		if(result ==1) {
			request.getSession().setAttribute("user_nickname", user_nickname);
		}
		request.setAttribute("result", result);
		return new ModelAndView("user/pages/user_myInfoModifyPro");
	}

}
