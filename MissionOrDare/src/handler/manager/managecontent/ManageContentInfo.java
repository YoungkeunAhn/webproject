package handler.manager.managecontent;




import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.JoinMissionInfoSuccessBoardDto;
import Dtos.MissionStateDto;
import Dtos.MissionStateSuccessBoardDto;
import Dtos.ReplyDto;
import handler.CommandHandler;
import manager.managecontent.ManageContentDao;

@Controller
public class ManageContentInfo implements CommandHandler{
	
	@Resource
	private ManageContentDao manageContentDao;
	@RequestMapping("/manage_content_info")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		request.setCharacterEncoding("utf-8");
		
		String success_board_id =request.getParameter("success_board_id");
		
		System.out.println("success_board_id" + success_board_id);
		JoinMissionInfoSuccessBoardDto joinMissionInfoSuccessBoardDto = manageContentDao.getBoardInfo(success_board_id);
		
		List<ReplyDto> replyDtos = manageContentDao.getReply(success_board_id);
		
		
		MissionStateSuccessBoardDto missionStateSuccessBoardDto = manageContentDao.selectUpload(success_board_id);
		System.out.println("missionStateDto : " + missionStateSuccessBoardDto );
		
		ArrayList<String> contents = new ArrayList<String>();
		
		if(missionStateSuccessBoardDto.getUpload_video() != null) {
			String[] video = missionStateSuccessBoardDto.getUpload_video().split("/");
			for(String v : video) {
				contents.add(v);
			}
		}
		if(missionStateSuccessBoardDto.getUpload_image() != null) {
			String[] image = missionStateSuccessBoardDto.getUpload_image().split("/");
			for(String i : image) {
				contents.add(i);
			}
		}
		
		request.setAttribute("contents", contents);
		request.setAttribute( "joinMissionInfoSuccessBoardDto", joinMissionInfoSuccessBoardDto );
		request.setAttribute("success_board_id", success_board_id);
		request.setAttribute("replyDtos", replyDtos);
		
		return new ModelAndView("manager/pages/manage_content_info");
	}
}
