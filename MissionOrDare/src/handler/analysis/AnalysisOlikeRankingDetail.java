package handler.analysis;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class AnalysisOlikeRankingDetail  implements CommandHandler {
	
	@RequestMapping( "analysis_Olikerankingdetail" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView( "analysis/pages/analysis_Olikerankingdetail" );
	}
}



