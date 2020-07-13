package handler.user.missionauth;

import java.io.File;
import java.util.List;

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
public class UserMyMissionPro implements CommandHandler{
	@Resource
	MissionAuthDao missionAuthDao;
	
	@RequestMapping("/user_myMissionPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String path = "C:/test/";
		MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
		mpr.setCharacterEncoding("utf-8");
		List<MultipartFile> files = mpr.getFiles("files");
		
		String board_content = mpr.getParameter("board_content");
		board_content = new String(board_content.getBytes("8859_1"), "utf-8");
		String public_availability = mpr.getParameter("public_availability");
		public_availability = new String(public_availability.getBytes("8859_1"), "utf-8");
		
		System.out.println(board_content);
		System.out.println(public_availability);
		
		String upload_video="";
		String upload_image="";
		int cnt = 0;
		for(MultipartFile file : files) {
			
			String originName = file.getOriginalFilename();
			String extension = "."+FilenameUtils.getExtension(originName);
			String newFile = path + "유저닉네임+missionId" + (cnt++) + extension;
			file.transferTo(new File(newFile));
			if(extension.equals("mp4")) {
				upload_video = upload_video + newFile + "/";
			} else {
				upload_image = upload_image + newFile + "/";
			}
		}
		
//		MissionStateDto missionStateDto = new MissionStateDto();
//		missionStateDto.setUpload_image(upload_image);
//		missionStateDto.setUpload_video(upload_video);
//		missionStateDto.setUpload_public_availability(Integer.parseInt(public_availability));
//		
//		int result = missionAuthDao.authMission(missionStateDto);
//		request.setAttribute("result", result);
		
		return new ModelAndView("user/pages/user_myMissionPro");
	}

}
