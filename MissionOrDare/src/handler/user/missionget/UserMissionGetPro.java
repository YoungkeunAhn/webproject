package handler.user.missionget;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import log.LogDao;
import user.missionget.MissionGetDao;

@Controller
public class UserMissionGetPro implements CommandHandler{
	@Resource
	private MissionGetDao missionGetDao;
	@Resource
	private LogDao logDao;
	
	@RequestMapping("/user_missionGetPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		String re = request.getParameter("re");
		if(re != null) {
			try{
	            //파일 객체 생성
				File file = new File("C:/log/mission_reject.txt");
	            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));
	        	String datestr = logDao.getDate();
	        	if(file.isFile() && file.canWrite()){
		            bufferedWriter.write(datestr + "<!>");
		            bufferedWriter.write("mission_reject" + "<!>");
		            bufferedWriter.write((String) request.getSession().getAttribute("user_nickname") + "<!>");
		            bufferedWriter.newLine();
		            bufferedWriter.close();
	        	}
	        }catch (IOException e) {
	            System.out.println(e);
	        }
		}
		
		String mission_level= request.getParameter("mission_level");
		String mission_categoryArea = request.getParameter("mission_categoryArea");
		
		request.setAttribute("mission_level", mission_level);
		request.setAttribute("mission_categoryArea", mission_categoryArea);
		
		return new ModelAndView("user/pages/user_missionGetPro");
	}
}
