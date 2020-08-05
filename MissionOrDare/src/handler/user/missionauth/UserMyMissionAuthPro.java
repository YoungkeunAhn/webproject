package handler.user.missionauth;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionStateDto;
import handler.CommandHandler;
import user.missionauth.MissionAuthDao;

@Controller
public class UserMyMissionAuthPro implements CommandHandler {
	@Resource
	MissionAuthDao missionAuthDao;
	
	@RequestMapping("/user_myMissionAuthPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		String path = "C:/test/";
		MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
		mpr.setCharacterEncoding("utf-8");
		
		Map<Object, Object> starScore = new HashMap<Object, Object>();
		
		String mission_state_id = mpr.getParameter("mission_state_id");
		String mission_info_id = missionAuthDao.getMissionInfoId(mission_state_id);
		
		int mission_avg_score = Integer.parseInt(mpr.getParameter("mission_avg_score"));
		starScore.put("mission_avg_score", mission_avg_score);
		starScore.put("mission_info_id", mission_info_id);
		missionAuthDao.addStarScore(starScore);
		
		List<MultipartFile> files = mpr.getFiles("files");
		
		String board_content = mpr.getParameter("board_content");
		board_content = new String(board_content.getBytes("8859_1"), "utf-8");
		String upload_public_availability = mpr.getParameter("public_availability");
		upload_public_availability = new String(upload_public_availability.getBytes("8859_1"), "utf-8");
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		Date nowdate = new Date();
		String dateString = formatter.format(nowdate);
		
		String upload_video= "";
		String upload_image= "";
		int cnt = 0;
		for(MultipartFile file : files) {
			
			String originName = file.getOriginalFilename();
			String extension = "."+FilenameUtils.getExtension(originName);
			String newFile = path + dateString + mission_state_id + user_nickname + cnt + extension;
			file.transferTo(new File(newFile));
			if(extension.equals(".mp4") || extension.equals(".avi")) {
				upload_video = upload_video + dateString + mission_state_id + user_nickname + cnt + extension + "/";
			} else {
				upload_image = upload_image + dateString + mission_state_id + user_nickname + cnt + extension + "/";
			}
			cnt++;
		}
		
		MissionStateDto missionStateDto = new MissionStateDto();
		missionStateDto.setMission_state_id(mission_state_id);
		missionStateDto.setMission_state(4);
		missionStateDto.setUpload_image(upload_image);
		missionStateDto.setUpload_video(upload_video);
		missionStateDto.setUpload_public_availability(Integer.parseInt(upload_public_availability));
		missionStateDto.setMission_upload_contents(board_content);
		
		int result = missionAuthDao.authMission(missionStateDto);
		request.setAttribute("result", result);
		
		return new ModelAndView("user/pages/user_myMissionAuthPro");
	}
}
