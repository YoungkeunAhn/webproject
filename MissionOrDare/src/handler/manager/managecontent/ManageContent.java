package handler.manager.managecontent;

import java.util.Hashtable;
import java.util.List;
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
public class ManageContent implements CommandHandler{
	
	@Resource
	private ManageContentDao manageContentDao;
	
	@RequestMapping("/manage_content")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
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
		String searchContent = request.getParameter("searchContent");
		String option = request.getParameter("option");
		
		if(searchContent ==null || searchContent.equals("")){
			cnt = manageContentDao.getBoardCount();
		}else{
			System.out.println("CNT");
			switch(option) {
			case "1": cnt = manageContentDao.getSearchCategoryCount(searchContent); break;
			case "2": cnt = manageContentDao.getSearchWriterCount(searchContent); break;
			default :  cnt = manageContentDao.getSearchTitleCount(searchContent);
			}
			System.out.println(cnt);
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
		

		
		if(searchContent ==null || searchContent.equals("")){
			if( cnt > 0 ) {
				Map<String, Integer> map = new Hashtable<String, Integer>();
				map.put( "start", start );
				map.put( "end", end );
				List<JoinMissionInfoSuccessBoardDto> joinMissionInfoSuccessBoardDtos = manageContentDao.getBoardArticles( map );
				request.setAttribute( "joinMissionInfoSuccessBoardDtos", joinMissionInfoSuccessBoardDtos );
			}
		}else {
			if( cnt > 0 ) {
				System.out.println("map");
				Map<String,Object> map = new Hashtable<String, Object>();
				map.put( "start", start );
				map.put( "end", end );
				map.put( "searchContent", searchContent );
				List<JoinMissionInfoSuccessBoardDto> joinMissionInfoSuccessBoardDtos;
				switch(option) {
				case "2": joinMissionInfoSuccessBoardDtos = manageContentDao.getSearchWriterArticles(map);  break;
				case "1": joinMissionInfoSuccessBoardDtos = manageContentDao.getSearchCategoryArticles(map);  break;
				default : joinMissionInfoSuccessBoardDtos = manageContentDao.getSearchTitleArticles(map);
				}
				request.setAttribute( "joinMissionInfoSuccessBoardDtos", joinMissionInfoSuccessBoardDtos );
				request.setAttribute("searchContent", searchContent);
				request.setAttribute("option", option);
				
			}
			
		}
		System.out.println("start:"+start+"end:" +end);
		
		return new ModelAndView("manager/pages/manage_content");
	}
}
