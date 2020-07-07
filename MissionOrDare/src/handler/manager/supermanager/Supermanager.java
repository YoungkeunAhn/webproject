package handler.manager.supermanager;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.ManagerDto;
import Dtos.UsersDto;
import handler.CommandHandler;
import manager.supermanager.SupermanagerDao;


@Controller
public class Supermanager implements CommandHandler{
	
	@Resource
	private SupermanagerDao supermanagerDao;
	@RequestMapping("/manage_manager")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int pageSize = 5;					// 한 페이지당 글 개수
		int pageBlock = 3;					// 한 번에 출력할 페이지 개수
		
		int cnt = 0;
		String pageNum = null;				// 현재 페이지
		int currentPage = 0;					// 계산용 현재페이지
		int start = 0;						// 현재페이지 시작 rownum
		int end = 0;							// 현재페이지 끝 rownum
		int number = 0;						// 출력용 글번호
		
		int startPage = 0;
		int endPage = 0;
		int pageCount = 0;
		String searchSupermanager = request.getParameter("searchSupermanager");
		
		if(searchSupermanager ==null || searchSupermanager.equals("")) {
			cnt = supermanagerDao.getCount();
		}else {
			cnt = supermanagerDao.getsearchManagerCount(searchSupermanager);
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
		
		if(searchSupermanager ==null || searchSupermanager.equals("")) {
			if( cnt > 0 ) {
				Map<String, Integer> map = new Hashtable<String, Integer>();
				map.put( "start", start );
				map.put( "end", end );
				List<ManagerDto> managerDto = supermanagerDao.managerDtos( map );
				request.setAttribute( "managerDto", managerDto );
			}
		}else {
			if( cnt > 0 ) {
				Map<String, Object> mapp = new Hashtable<String, Object>();
				mapp.put( "start", start );
				mapp.put( "end", end );
				mapp.put( "searchUser", searchSupermanager );
				List<ManagerDto> managerDto = supermanagerDao.findManager( mapp );
				request.setAttribute( "managerDto", managerDto );
				request.setAttribute("searchSupermanager",searchSupermanager);
			}
		}
		
		return new ModelAndView("manager/pages/manage_manager");
	}
}
