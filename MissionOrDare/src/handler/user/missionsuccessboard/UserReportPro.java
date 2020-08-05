package handler.user.missionsuccessboard;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import Dtos.ReportBoardDto;
import handler.CommandHandler;
import user.successboard.UserSuccessBoardDao;

@Controller
public class UserReportPro implements CommandHandler{
	
	@Resource
	private UserSuccessBoardDao userSuccessBoardDao;
	@RequestMapping("/user_reportPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		String report_user_nickname = (String) request.getSession().getAttribute("user_nickname");
		String report_type = request.getParameter("reportType");
		String report_reason = request.getParameter("reportReason");
		String reported_nickname = request.getParameter("reported_nickname");
		String success_board_id = request.getParameter("success_board_id");
		
		
		ReportBoardDto reportBoardDto = new ReportBoardDto();
		reportBoardDto.setReport_user_nickname(report_user_nickname);
		reportBoardDto.setReported_nickname(reported_nickname);
		reportBoardDto.setReport_type(report_type);
		reportBoardDto.setReport_reason(report_reason);
		
		String reported_reply_id = request.getParameter("reported_reply_id");
		
		
		if(reported_reply_id == null||reported_reply_id.equals("")) { //게시글
			
			String reported_board_id = request.getParameter("success_board_id");
			
			reportBoardDto.setReported_board_id(reported_board_id);
			int result = userSuccessBoardDao.insertReportBoard(reportBoardDto);
			request.setAttribute("result", result);
			
		}else {//댓글 신고
			reportBoardDto.setReported_reply_id(reported_reply_id);
			int result = userSuccessBoardDao.insertReportReply(reportBoardDto);
			request.setAttribute("result", result);
		}
		

		request.setAttribute("success_board_id", success_board_id);
		
		
		return new ModelAndView("user/pages/user_reportPro");
	}
}
