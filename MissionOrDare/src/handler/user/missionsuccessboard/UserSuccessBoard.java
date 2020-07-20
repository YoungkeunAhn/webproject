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
import Dtos.SuccessBoardContentDto;
import handler.CommandHandler;
import user.missionget.MissionGetDao;
import user.successboard.UserSuccessBoardDao;

@Controller
public class UserSuccessBoard implements CommandHandler {
	@Resource
	private MissionGetDao missionGetDao;
	
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	
	@RequestMapping("/user_successBoard")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		missionGetDao.refresh();
		missionGetDao.delrefresh();
		
		ArrayList<SuccessBoardContentDto> contents = new ArrayList<SuccessBoardContentDto>();
		
		List<MissionStateSuccessBoardDto> missionStateDtos;
		String option = request.getParameter("option");
		String searchUser = request.getParameter("searchUser");
		String searchCategory = request.getParameter("searchCategory");
		
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
			SuccessBoardContentDto content = new SuccessBoardContentDto();
			if(m.getUpload_video() != null) {
				String[] video = m.getUpload_video().split("/");
				content.setContents(video[0]);
				content.setSuccess_board_id(m.getSuccess_board_id());
				contents.add(content);
			} else if(m.getUpload_image() != null){
				String[] image = m.getUpload_image().split("/");
				content.setContents(image[0]);
				content.setSuccess_board_id(m.getSuccess_board_id());
				contents.add(content);
			}
		}
		request.setAttribute("option", option);
		request.setAttribute("contents", contents);
		request.setAttribute("missionStateDtos", missionStateDtos);
				
		return new ModelAndView("user/pages/user_successBoard");
	}
}
