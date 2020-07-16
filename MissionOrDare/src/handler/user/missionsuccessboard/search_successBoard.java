package handler.user.missionsuccessboard;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionCategoryDto;
import Dtos.UsersDto;
import handler.CommandHandler;
import manager.managemessage.ManageMessageDao;
import user.successboard.UserSuccessBoardDao;

@Controller
public class search_successBoard implements CommandHandler {
	@Resource
	ManageMessageDao manageMessageDao;
	@Resource
	UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/search_successBoard")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String option = request.getParameter("option");
		String search_input = request.getParameter("search_input");
		
		if(search_input != null || ! search_input.equals("")) {
			if(option.equals("user")) {
				Map<String, Object> mapp = new Hashtable<String, Object>();
				mapp.put( "searchUser", search_input );
				List<UsersDto> usersDtos = manageMessageDao.findUsers( mapp );
				
				request.setAttribute( "usersDtos", usersDtos );
			} else if (option.equals("content")) {
				Map<String, Object> map = new Hashtable<String, Object>();
				map.put( "searchCategory", search_input );
				List<MissionCategoryDto> largeCategoryDtos = userSuccessBoardDao.findLargeCategorys( map );
				List<MissionCategoryDto> smallCategoryDtos = userSuccessBoardDao.findSmallCategorys( map );
				
				request.setAttribute( "largeCategoryDtos", largeCategoryDtos );
				request.setAttribute( "smallCategoryDtos", smallCategoryDtos );
				
			}
			request.setAttribute("search_input",search_input);
		} 
		
		return new ModelAndView("user/pages/search_successBoard");
	}
}
