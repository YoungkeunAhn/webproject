package handler.manager.managemission;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.managemission.ManageMissionDao;

@Controller
public class ManageMissionDeletePro implements CommandHandler {
	@Resource
	ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_mission_deletePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		
		String mission_info_id = request.getParameter("id");
		int result = manageMissionDao.deleteMission(mission_info_id);
		
		request.setAttribute("result", result);
		
		return new ModelAndView("manager/pages/manage_mission_deletePro");
	}
}
