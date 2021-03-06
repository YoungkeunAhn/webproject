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

import Dtos.MissionCategoryAndInfoDto;
import handler.CommandHandler;
import manager.managemission.ManageMissionDao;

@Controller
public class ManageMission implements CommandHandler{
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_mission")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		
		String mission = request.getParameter("mission");
		String option = request.getParameter("option");
		
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
		
		if(mission == null || mission.equals("")) {
			cnt = manageMissionDao.getMissionCount();
		} else {
			switch(option) {
			case "1" : cnt = manageMissionDao.getSearchMissionCountCategory(mission); break;
			case "2" : cnt = manageMissionDao.getSearchMissionCountTitle(mission); break;
			default : cnt = manageMissionDao.getSearchMissionCountContent(mission);
			}
			
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
		
		if(mission == null || mission.equals("")) {
			if( cnt > 0 ) {
				Map<String, Integer> map = new Hashtable<String, Integer>();
				map.put("start", start);
				map.put("end", end);
				List<MissionCategoryAndInfoDto> missionCategoryAndInfoDtos = manageMissionDao.getMissions(map);
				for(MissionCategoryAndInfoDto missionCategoryAndInfoDto : missionCategoryAndInfoDtos) {
					String mission_info_id = missionCategoryAndInfoDto.getMission_info_id();
					int authCount = manageMissionDao.getAuthCount(mission_info_id);
					if(authCount > 0) {
						double mission_avg_score = missionCategoryAndInfoDto.getMission_avg_score()/authCount;
						missionCategoryAndInfoDto.setMission_avg_score(mission_avg_score);
					}
					
				}
				request.setAttribute( "missionCategoryAndInfoDtos", missionCategoryAndInfoDtos );
			}
		} else {
			if( cnt > 0 ) {
				Map<String, Object> map = new Hashtable<String, Object>();
				map.put("start", start);
				map.put("end", end);
				map.put("mission", mission);
				List<MissionCategoryAndInfoDto> missionCategoryAndInfoDtos;
				
				switch(option) {
				case "1" : missionCategoryAndInfoDtos = manageMissionDao.getSearchMissionsCategory(map); break;
				case "2" : missionCategoryAndInfoDtos = manageMissionDao.getSearchMissionsTitle(map); break;
				default : missionCategoryAndInfoDtos = manageMissionDao.getSearchMissionsContent(map);
				}
				for(MissionCategoryAndInfoDto missionCategoryAndInfoDto : missionCategoryAndInfoDtos) {
					String mission_info_id = missionCategoryAndInfoDto.getMission_info_id();
					int authCount = manageMissionDao.getAuthCount(mission_info_id);
					if(authCount > 0) {
						double mission_avg_score = missionCategoryAndInfoDto.getMission_avg_score()/authCount;
						missionCategoryAndInfoDto.setMission_avg_score(mission_avg_score);
					}
					
				}
				request.setAttribute( "missionCategoryAndInfoDtos", missionCategoryAndInfoDtos );
				request.setAttribute("mission", mission);
				request.setAttribute("option", option);
			}
		}
		return new ModelAndView("manager/pages/manage_mission");
	}
}
