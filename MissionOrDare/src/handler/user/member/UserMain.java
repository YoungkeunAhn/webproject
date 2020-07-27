package handler.user.member;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UserMissionsDto;
import handler.CommandHandler;
import user.member.UserMemberDao;
import user.missionget.MissionGetDao;

@Controller
public class UserMain implements CommandHandler{
	@Resource
	private MissionGetDao missionGetDao;
	@Resource
	private UserMemberDao userMemberDao;
	@RequestMapping("/user_main")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		try{
            //파일 객체 생성
			File file = new File("C:/log/login.txt");
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
        	String datestr = sdf.format(cal.getTime());
        	if(file.isFile() && file.canWrite()){
	            bufferedWriter.write(datestr + "<!>");
	            bufferedWriter.write("로그인"+ "<!>");
	            bufferedWriter.write((String) request.getSession().getAttribute("user_nickname") + "<!>");
	            bufferedWriter.newLine();
	            bufferedWriter.close();
        	}
        }catch (IOException e) {
            System.out.println(e);
        }

		request.setCharacterEncoding("utf-8");
		
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		
		List<UserMissionsDto> userMissionsDtos = missionGetDao.getUserMissions(user_nickname);
		int result = userMissionsDtos.size();
		
		request.setAttribute("userMissionsDtos", userMissionsDtos);
		request.setAttribute("result", result);
		return new ModelAndView("user/pages/user_main");
		
	}
}
