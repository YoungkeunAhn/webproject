package handler.manager.supermanager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.ManagerDto;
import handler.CommandHandler;
import manager.supermanager.SupermanagerDao;


@Controller
public class SupermanagerInsertPro implements CommandHandler{
	@Resource
	private SupermanagerDao supermanagerDao;
	
	@RequestMapping("/manage_manager_insertPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		
		ManagerDto managerDto = new ManagerDto();
		managerDto.setManager_id(request.getParameter("manager_id"));
		managerDto.setManager_passwd(request.getParameter("manager_passwd"));
		System.out.println(managerDto.getManager_id());
		System.out.println(managerDto.getManager_passwd());
		
		int result = supermanagerDao.insertManager(managerDto);
		request.setAttribute("result", result);
		
		return new ModelAndView("manager/pages/manage_manager_insertPro");
	}
}
