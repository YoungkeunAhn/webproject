package handler.user.missioneval;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UserMissionsDto;
import handler.CommandHandler;
import user.missioneval.UserMissionEvalDao;

@Controller
public class UserEval implements CommandHandler {
	
	@Resource
	private UserMissionEvalDao userMissionEvalDao;
	@RequestMapping("/user_eval")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		int result = userMissionEvalDao.missionCount();
		
		if(result ==0) {
			request.setAttribute("result", result);
		}else {
			String profile_picture = userMissionEvalDao.getUserProfile(user_nickname);
			UserMissionsDto userMissionDto = userMissionEvalDao.getMissionEval();
			
			if(userMissionDto.getUpload_image() != null) {
				String[] upload_image = userMissionDto.getUpload_image().split("/");
				System.out.println(upload_image);
				request.setAttribute("upload_image", upload_image);
			}else if(userMissionDto.getUpload_video() != null){
				String[] upload_video = userMissionDto.getUpload_video().split("/");
				request.setAttribute("upload_video", upload_video);
			}
			
			request.setAttribute("userMissionDto", userMissionDto);
			request.setAttribute("profile_picture", profile_picture);
			request.setAttribute("result", result);
		}
		
		return new ModelAndView("user/pages/user_eval");
	}
}
