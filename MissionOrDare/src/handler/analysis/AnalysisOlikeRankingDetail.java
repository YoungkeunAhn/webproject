package handler.analysis;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UsersDto;
import analysis.AnalysisDao;
import handler.CommandHandler;

@Controller
public class AnalysisOlikeRankingDetail  implements CommandHandler {
	
	@Resource			
	private AnalysisDao analysisDao;
	
	@RequestMapping( "analysis_Olikerankingdetail" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");				
		
		List<UsersDto> usersDtos = analysisDao.allUserInfo();	
		request.setAttribute("usersDtos", usersDtos);
		
		return new ModelAndView( "analysis/pages/analysis_Olikerankingdetail" );
	}
}



