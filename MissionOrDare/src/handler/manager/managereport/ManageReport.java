package handler.manager.managereport;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.ReportBoardDto;
import handler.CommandHandler;
import manager.managereport.ManageReportDao;

@Controller
public class ManageReport implements CommandHandler{
	@Resource
	private ManageReportDao manageReportDao;
	@RequestMapping("/manage_report")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		
		int pageSize = 3;					// 한 페이지당 글 개수
		int pageBlock = 3;					// 한 번에 출력할 페이지 개수
		
		int cnt = 0;
		String pageNum = null;				// 현재 페이지
		int currentPage = 0;					// 계산용 현재페이지
		int start = 0;							// 현재페이지 시작 rownum
		int end = 0;							// 현재페이지 끝 rownum
		int startPage = 0;
		int endPage = 0;
		int pageCount = 0;

		String option = request.getParameter("option");
		if(option == null ) option = "1";
		String searchNickname = request.getParameter("searchNickname");
		String searchReport ="";
		System.out.println(option);
		
		if(searchNickname == null || searchNickname.equals("")){
			switch(option) {
			case "1": cnt=manageReportDao.getReportCount();   break;
			case "2": searchReport="욕설, 비방, 차별, 혐오";
					cnt=manageReportDao.getSearchReportCount(searchReport); break;
			case "3": searchReport="홍보, 영리목적";
					cnt=manageReportDao.getSearchReportCount(searchReport); break;
			case "4": searchReport="불법정보";
					cnt=manageReportDao.getSearchReportCount(searchReport); break;
			case "5": searchReport="음란, 청소년유해";
					cnt=manageReportDao.getSearchReportCount(searchReport); break;
			case "6": searchReport="도배, 스팸";
					cnt=manageReportDao.getSearchReportCount(searchReport); break;
			default : searchReport="기타"; 
					cnt=manageReportDao.getSearchReportCount(searchReport); 
			}
		}else {
			cnt = manageReportDao.getSearchNicknameCount(searchNickname);
		}
		
		pageNum = request.getParameter( "pageNum" );
		if( pageNum == null ) {
			pageNum = "1";
		}
		currentPage = Integer.parseInt( pageNum );
		start = ( currentPage -1 ) * pageSize + 1;		// ( 5 - 1 ) * 10 + 1 	41
		if( end > cnt ) end = cnt;
		end = start + pageSize - 1;						// 41 + 10 - 1			50 
		
	
		pageCount = cnt / pageSize + ( cnt % pageSize > 0 ? 1 : 0 );
		startPage = ( currentPage / pageBlock ) * pageBlock + 1;
						// ( 5 / 10 ) * 10 + 1			1
						// ( 9 / 10 ) * 10 + 1			1
		if( currentPage % pageBlock == 0 ) startPage -= pageBlock;				
		endPage = startPage + pageBlock - 1;
						// 1 + 10 - 1					10
		if( endPage > pageCount ) endPage = pageCount;					

		request.setAttribute( "pageSize", pageSize );
		request.setAttribute( "pageBlock", pageBlock );					
		request.setAttribute( "cnt", cnt );
		request.setAttribute( "pageNum", pageNum );
		request.setAttribute( "currentPage", currentPage );
		request.setAttribute( "startPage", startPage );
		request.setAttribute( "endPage", endPage );
		request.setAttribute( "pageCount", pageCount );
		

		//전체
		if(searchNickname ==null || searchNickname.equals("")){	
			if( cnt > 0 ) { //신고유형
				if(option.equals("1")) {
					Map<String, Integer> map = new Hashtable<String, Integer>();
					map.put( "start", start );
					map.put( "end", end );	
					List<ReportBoardDto> reportBoardDtos = manageReportDao.getReportArticles( map );
					request.setAttribute( "reportBoardDtos", reportBoardDtos );
				}else {
					Map<String, Object> map = new Hashtable<String, Object>();
					map.put( "start", start );
					map.put( "end", end );		
					map.put( "searchReport", searchReport );	
					List<ReportBoardDto> reportBoardDtos = manageReportDao.getSearchReportArticles(map);
					request.setAttribute("reportBoardDtos", reportBoardDtos);
					request.setAttribute("searchReport", searchReport);  
				}
			}
		}else{
			//아이디를 검색했을 때 
			if( cnt > 0 ) {
				Map<String,Object> map = new Hashtable<String, Object>();
				map.put( "start", start );
				map.put( "end", end );
				map.put( "searchNickname", searchNickname );
				List<ReportBoardDto> reportBoardDtos;
			
				reportBoardDtos = manageReportDao.getSearchNicknameArticles(map);
				
				request.setAttribute( "reportBoardDtos", reportBoardDtos );
				request.setAttribute("searchNickname", searchNickname);
				request.setAttribute("option", option);
				
			}
		}
		
		
		return new ModelAndView("manager/pages/manage_report");
	}
}
