package handler.manager.managemission;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionCategoryDto;
import handler.CommandHandler;
import manager.managemission.ManageMissionDao;

@Controller
public class ManageCategory implements CommandHandler{
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_category")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		String category = request.getParameter("category");
		
		int pageSize = 5;					// �븳 �럹�씠吏��떦 湲� 媛쒖닔
		int pageBlock = 3;					// �븳 踰덉뿉 異쒕젰�븷 �럹�씠吏� 媛쒖닔
		
		int cnt = 0;
		String pageNum = null;				// �쁽�옱 �럹�씠吏�
		int currentPage = 0;					// 怨꾩궛�슜 �쁽�옱�럹�씠吏�
		int start = 0;						// �쁽�옱�럹�씠吏� �떆�옉 rownum
		int end = 0;							// �쁽�옱�럹�씠吏� �걹 rownum
		int number = 0;						// 異쒕젰�슜 湲�踰덊샇
		
		int startPage = 0;
		int endPage = 0;
		int pageCount = 0;
		
		if(category == null || category.equals("")) {
			cnt = manageMissionDao.getCount();
		} else {
			cnt = manageMissionDao.getSearchCount(category);
		}
		
		
		pageNum = request.getParameter( "pageNum" );
		if( pageNum == null ) {
			pageNum = "1";
		}
		currentPage = Integer.parseInt( pageNum );
		start = ( currentPage -1 ) * pageSize + 1;		// ( 5 - 1 ) * 10 + 1 	41
		if( end > cnt ) end = cnt;
		end = start + pageSize - 1;						// 41 + 10 - 1			50 
		
		number = cnt - ( currentPage -1 ) * pageSize;	// 50 - ( 2-1 ) * 10
		
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
		request.setAttribute( "number", number );
		request.setAttribute( "startPage", startPage );
		request.setAttribute( "endPage", endPage );
		request.setAttribute( "pageCount", pageCount );
		
		if(category == null || category.equals("")) {
			if( cnt > 0 ) {
				Map<String, Integer> map = new Hashtable<String, Integer>();
				map.put("start", start);
				map.put("end", end);
				List<MissionCategoryDto> missionCategoryDtos = manageMissionDao.getMissionCategorys(map);
				request.setAttribute( "missionCategoryDtos", missionCategoryDtos );
			}
		} else {
			if( cnt > 0 ) {
				Map<String, Object> map = new Hashtable<String, Object>();
				map.put("start", start);
				map.put("end", end);
				map.put("category", category);
				List<MissionCategoryDto> missionCategoryDtos = manageMissionDao.getSearchCategorys(map);
				request.setAttribute( "missionCategoryDtos", missionCategoryDtos );
				request.setAttribute("category", category);
			}
		}
		
		return new ModelAndView("manager/pages/manage_category");
	}
}
