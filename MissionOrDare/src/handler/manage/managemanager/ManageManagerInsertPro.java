package handler.manage.managemanager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.ManagerDto;
import handler.CommandHandler;
import manager.managemanager.ManageManagerDao;

@Controller
public class ManageManagerInsertPro implements CommandHandler{
	@Resource
	private ManageManagerDao manageManagerDao;
	
	@RequestMapping("/manage_manager_insertPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		ManagerDto managerDto = new ManagerDto();
		managerDto.setManager_id(request.getParameter("manager_id"));
		managerDto.setManager_passwd(request.getParameter("manager_passwd"));
		System.out.println(managerDto.getManager_id());
		System.out.println(managerDto.getManager_passwd());
		
		int result = manageManagerDao.insertManager(managerDto);
		request.setAttribute("result", result);
		
		return new ModelAndView("manager/pages/manage_manager_insertPro");
	}
	
	

}
