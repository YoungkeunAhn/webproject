package handler.user.missionsuccessboard;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionStateDto;
import handler.CommandHandler;
import user.successboard.UserSuccessBoardDao;

@Controller
public class UserSuccessBoard implements CommandHandler {
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/user_successBoard")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<String> contents = new ArrayList<String>();;
		List<MissionStateDto> missionStateDtos = userSuccessBoardDao.getSuccessMissions();
		for(MissionStateDto m : missionStateDtos ) {
			if(m.getUpload_video() != null) {
				String[] video = m.getUpload_video().split("/");
				System.out.println(video[0]);
				contents.add(video[0]);
			} else {
				String[] image = m.getUpload_image().split("/");
				System.out.println(image[0]);
				contents.add(image[0]);
			}
		}
		
		request.setAttribute("contents", contents);
		request.setAttribute("missionStateDtos", missionStateDtos);
				
		return new ModelAndView("user/pages/user_successBoard");
	}
}
