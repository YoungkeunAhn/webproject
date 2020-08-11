package handler.user.missionget;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionStateDto;
import handler.CommandHandler;
import user.missionget.MissionGetDao;

@Controller
public class UserGiveUpPro implements CommandHandler {
	@Resource
	private MissionGetDao missionGetDao;
	
	@RequestMapping("/user_giveupPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		request.setCharacterEncoding("utf-8");
		
		String mission_state_id = request.getParameter("mission_state_id");
		String mission_giveup_reason = request.getParameter("giveup_reason");
		MissionStateDto missionStateDto = new MissionStateDto();
		missionStateDto.setMission_state_id(mission_state_id);
		missionStateDto.setMission_giveup_reason(mission_giveup_reason);
		missionStateDto.setMission_state(5);
		
		int result = missionGetDao.giveUpMission(missionStateDto);
		request.setAttribute("result", result);
			
		return new ModelAndView("user/pages/user_giveupPro");
	}
}
