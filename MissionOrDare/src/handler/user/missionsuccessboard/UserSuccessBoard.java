package handler.user.missionsuccessboard;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionStateSuccessBoardDto;
import handler.CommandHandler;
import user.successboard.UserSuccessBoardDao;

@Controller
public class UserSuccessBoard implements CommandHandler {
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/user_successBoard")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		ArrayList<String> contents = new ArrayList<String>();
		List<MissionStateSuccessBoardDto> missionStateDtos;
		String option = request.getParameter("option");
		String searchUser = request.getParameter("searchUser");
		String searchCategory = request.getParameter("searchCategory");
		System.out.println(searchCategory);
		
		
		if(searchUser == null && searchCategory == null) {
			if( option == null) {
				missionStateDtos = userSuccessBoardDao.getSuccessMissions();
			} else {
				missionStateDtos = userSuccessBoardDao.getSuccessPopularityMissions();
			}
		} else if(searchCategory == null){
			missionStateDtos = userSuccessBoardDao.getUserMissions(searchUser);
		} else {
			String[] searchCategoryArr = searchCategory.split("/");
			missionStateDtos = userSuccessBoardDao.getCategoryMissions(searchCategoryArr[searchCategoryArr.length -1]);
		}
			
		for(MissionStateSuccessBoardDto m : missionStateDtos ) {
			if(m.getUpload_video() != null) {
				String[] video = m.getUpload_video().split("/");
				contents.add(video[0]);
			} else if(m.getUpload_image() != null){
				String[] image = m.getUpload_image().split("/");
				contents.add(image[0]);
			}
		}
		
		request.setAttribute("option", option);
		request.setAttribute("contents", contents);
		request.setAttribute("missionStateDtos", missionStateDtos);
				
		return new ModelAndView("user/pages/user_successBoard");
	}
}
