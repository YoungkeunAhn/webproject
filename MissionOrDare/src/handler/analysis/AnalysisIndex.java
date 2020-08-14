package handler.analysis;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import analysis.AnalysisDao;
import handler.CommandHandler;

@Controller
public class AnalysisIndex implements CommandHandler {
	
	@Resource			
	private AnalysisDao analysisDao;
	
	@RequestMapping( "/analysis_index" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {	
		
		request.setCharacterEncoding("utf-8");
		
		String nullvalue = "없는 닉네임입니다.";
		String result="";
		String nickname = request.getParameter( "user_nickname" );
		
		if( nickname != null ) {
			result = analysisDao.nickCheck( nickname );
		}
		
		 
		if( result == null ) {
			request.setAttribute( "nullvalue" , nullvalue);
		} else {
			request.setAttribute( "result", result ); 		
		}				
		
		return new ModelAndView( "analysis/analysis_index" );
		
	}
}
