package handler.user.member;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UsersDto;
import handler.CommandHandler;
import user.member.UserMemberDao;


@Controller
public class UserJoinPro implements CommandHandler{
	
	@Resource
	private UserMemberDao userMemberDao;
	
	@RequestMapping("/user_joinPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		
		//회원가입 한 내용 insert 
		
		//kakao
		String user_email = request.getParameter("user_email");
		System.out.println(user_email);
		String profile_picture = request.getParameter("profile_picture");
		int kakao_id = Integer.parseInt(request.getParameter("kakao_id"));
		System.out.println("kakao_idjoinpro:"+kakao_id);
		String age_group = request.getParameter("age_group");
		String kakao_birthday = request.getParameter("kakao_birthday");
		String gender = request.getParameter("gender");
		String kakao_access_token = request.getParameter("kakao_access_token");
		
		
		//회원가입 
		String user_nickname = request.getParameter("user_nickname");
		String user_passwd = request.getParameter("user_passwd");
		String date_of_birth = request.getParameter("user_birth") ; 
		System.out.println("date_of_birth:"+date_of_birth);
		//SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		//Date date_of_birth = df.parse(birth);
		//System.out.println("date_of_birth : " + date_of_birth);
		String job = request.getParameter("user_job");
		String categorys = request.getParameter("interesting_categorys");
		String[] category = categorys.split("/");
		String location = request.getParameter("user_location");
		
		request.getSession().setAttribute("user_nickname", user_nickname);
		request.getSession().setAttribute("kakao_id", kakao_id);
		
		UsersDto usersDto = new UsersDto();
		usersDto.setUser_nickname(user_nickname);
		usersDto.setUser_email(user_email);
		usersDto.setProfile_picture(profile_picture);
		usersDto.setKakao_id(kakao_id);
		usersDto.setAge_group(age_group);
		usersDto.setDate_of_birth(date_of_birth);
		usersDto.setKakao_birthday(kakao_birthday);
		usersDto.setGender(gender);
		usersDto.setKakao_access_token(kakao_access_token);
		usersDto.setUser_passwd(user_passwd);
		usersDto.setJob(job);
		usersDto.setLocation(location);
		usersDto.setDate_of_birth(date_of_birth);
		
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
		
		
		request.setAttribute("kakao_id", kakao_id);
		int result = userMemberDao.insertUser(usersDto);
		request.setAttribute("result", result);
		return new ModelAndView("user/pages/user_joinPro");
	}
}
