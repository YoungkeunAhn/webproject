package handler.manager.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.member.MemberManagerDao;

@Controller
public class ManageMissionInsertPro implements CommandHandler{
	@Resource(name="memberManagerDao")
	private MemberManagerDao memberManagerDao;
	
	@RequestMapping("/manage_mission_insertPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		return new ModelAndView("manager/pages/manage_mission_insertPro");
	}
}
