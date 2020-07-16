package handler.manager.managemassage;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UsersDto;
import handler.CommandHandler;
import manager.managemessage.ManageMessageDao;

@Controller
public class IdCheck implements CommandHandler {
	@Resource
	ManageMessageDao manageMessageDao;
	
	@RequestMapping("/idcheck")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		String searchUser = request.getParameter("searchUser");
		
		Map<String, Object> mapp = new Hashtable<String, Object>();
		mapp.put( "searchUser", searchUser );
		List<UsersDto> usersDtos = manageMessageDao.findUsers( mapp );
		request.setAttribute( "usersDtos", usersDtos );
		request.setAttribute("searchUser",searchUser);
	
		
		return new ModelAndView("manager/pages/idcheck");
	}
}
