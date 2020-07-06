package handler.manager.managecontent;



import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import handler.CommandHandler;
import manager.managecontent.ManageContentDao;

@Controller
public class ManageContentInfo implements CommandHandler{
	
	@Resource
	private ManageContentDao manageContentDao;
	@RequestMapping("/manage_content_info")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		
		return new ModelAndView("manager/pages/manage_content_info");
	}
}
