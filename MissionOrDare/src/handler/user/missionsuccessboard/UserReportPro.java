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
		String report_user_nickname = (String) request.getSession().getAttribute("user_nickname");
		
		//댓글 신고 
		String reported_reply_id = request.getParameter("reported_reply_id");
		String report_type = request.getParameter("reportType");
		String report_reason = request.getParameter("reportReason");
		String reported_nickname = request.getParameter("reported_nickname");
		String success_board_id = request.getParameter("success_board_id");
		
		
		
		//댓글 신고
		ReportBoardDto reportBoardDto = new ReportBoardDto();
		reportBoardDto.setReport_user_nickname(report_user_nickname);
		reportBoardDto.setReported_nickname(reported_nickname);
		reportBoardDto.setReport_type(report_type);
		reportBoardDto.setReport_reason(report_reason);
		reportBoardDto.setReported_reply_id(reported_reply_id);
		
		
		int result = userSuccessBoardDao.insertReportReply(reportBoardDto);
		
		request.setAttribute("success_board_id", success_board_id);
		request.setAttribute("result", result);
		return new ModelAndView("user/pages/user_reportPro");
	}
}
