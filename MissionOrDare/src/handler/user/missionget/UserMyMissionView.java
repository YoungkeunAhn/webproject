package handler.user.missionget;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.UsersDto;
import handler.CommandHandler;
import user.missionget.MissionGetDao;

@Controller
public class UserMyMissionView implements CommandHandler{
	@Resource
	MissionGetDao missionGetDao;
	
	@RequestMapping("/user_myMissionView")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		String mission_level= request.getParameter("mission_level");
		String mission_categoryArea = request.getParameter("mission_categoryArea");
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		UsersDto userDto = missionGetDao.getUserCategory(user_nickname);
		System.out.println(mission_level + mission_categoryArea);
		
		List<MissionCategoryAndInfoDto> missionCategoryAndInfoDto;
		if(mission_level.equals("normal")) {
			if(mission_categoryArea.equals("all")) {
				missionCategoryAndInfoDto = missionGetDao.getNormalAllMission();
			} else {
				missionCategoryAndInfoDto = missionGetDao.getNormalMyMission(userDto);
			}
		} else { 
			if(mission_categoryArea.equals("all")) {
				missionCategoryAndInfoDto = missionGetDao.getChallengeAllMission();
			} else {
				missionCategoryAndInfoDto = missionGetDao.getChallengeMyMission(userDto);
			}
		}
		int random_number = -1;
		if(missionCategoryAndInfoDto.size() != 0) {
			random_number = (int) ( Math.random() * missionCategoryAndInfoDto.size());
			request.setAttribute("randomMission", missionCategoryAndInfoDto.get(random_number));
		}
		int result = missionGetDao.getUserMission(user_nickname);
		request.setAttribute("result", result);
		
		request.setAttribute("random_number", random_number);
		request.setAttribute("mission_level", mission_level);
		request.setAttribute("mission_categoryArea", mission_categoryArea);
		
		return new ModelAndView("user/pages/user_myMissionView");
	}

}
