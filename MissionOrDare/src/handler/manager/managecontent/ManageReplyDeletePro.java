package handler.manager.managecontent;

import java.util.Hashtable;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.JoinMissionInfoSuccessBoardDto;
import handler.CommandHandler;
import manager.managecontent.ManageContentDao;

@Controller
public class ManageReplyDeletePro implements CommandHandler{
	@Resource
	private ManageContentDao manageContentDao;
	@RequestMapping("/manage_reply_deletePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String reply_id = request.getParameter("id"); 
		int reference =Integer.parseInt(request.getParameter("ref"));
		int reply_step = Integer.parseInt(request.getParameter("step"));
		String success_board_id=request.getParameter("bid");
		
		JoinMissionInfoSuccessBoardDto joinMissionInfoSuccessBoardDto = manageContentDao.getBoardInfo(success_board_id);
		
		
		
		if(reply_step==1) {
			int result = manageContentDao.deleteReply(reply_id);
			request.setAttribute("reply_id", reply_id);
			request.setAttribute("result", result);
		}else {
			Map<String,Object> map = new Hashtable<String, Object>();
			map.put("reference",reference);
			map.put("success_board_id",success_board_id);
			int result = manageContentDao.deleteReplies(map);
			request.setAttribute("reference", reference);
			request.setAttribute("reply_step", reply_step);
			request.setAttribute("result", result);
		}
		
		request.setAttribute( "joinMissionInfoSuccessBoardDto", joinMissionInfoSuccessBoardDto );
		
		return new ModelAndView("manager/pages/manage_reply_deletePro");
	}
}
