package handler.user.userpage;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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

import handler.CommandHandler;
import user.member.UserMemberDao;

@Controller
public class UserProfileModifyPro implements CommandHandler{
	
	@Resource
	private UserMemberDao userMemberDao;
	
	@RequestMapping("/user_profileModifyPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		  
		MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
		mpr.setCharacterEncoding("utf-8");
		
		MultipartFile file = mpr.getFile("profile");
		
		String path = "C:/test/";
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		Date nowdate = new Date();
		String dateString = formatter.format(nowdate);
		 
		String profile_picture= "";
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		String originName = file.getOriginalFilename();
		String extension = "."+FilenameUtils.getExtension(originName);
		String newFile = path + dateString + user_nickname + extension;
		
		file.transferTo(new File(newFile)); 
		profile_picture = dateString + user_nickname + extension;
		
		
		
		Map< String, String > modata = new HashMap< String, String >();
		modata.put( "user_nickname", user_nickname );
		modata.put( "profile_picture", profile_picture );
		
		int result = userMemberDao.updateProfile( modata );
		request.setAttribute( "result", result );
		return new ModelAndView("user/pages/user_profileModifyPro");
	}

}
