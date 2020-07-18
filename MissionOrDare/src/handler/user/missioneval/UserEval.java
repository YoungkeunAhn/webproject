package handler.user.missioneval;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UserMissionsDto;
import handler.CommandHandler;
import user.missioneval.UserMissionEvalDao;

@Controller
public class UserEval implements CommandHandler {

	@Resource
	private UserMissionEvalDao userMissionEvalDao;

	@RequestMapping("/user_eval")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		int result = userMissionEvalDao.missionCount();
		String profile_picture = userMissionEvalDao.getUserProfile(user_nickname);
		ArrayList<String> contents = new ArrayList<String>();

		if (result == 0) { // 미션상태테이블의 컬럼 수가 0
			request.setAttribute("result", result);
		} else { // 미션상태테이블의 컬럼 수가 0이 아님
			List<UserMissionsDto> userMissionsDtos = userMissionEvalDao.getMissionEval();

			// loop:
			for (int i = 0; i < userMissionsDtos.size(); ++i) { // list dto 반복문
				UserMissionsDto userMissionsDto = userMissionsDtos.get(i);
				String eval_nicknames = userMissionsDto.getMission_evaluation_nickname(); // mission_evaluation_nickname																							
				String mission_state_id = userMissionsDto.getMission_state_id();
				
				if (eval_nicknames != null) { // 미션을 평가한 유저가 존재
					List<String> eval_nickname = Arrays.asList(eval_nicknames.split("/"));
					for (int j = 0; j < eval_nickname.size(); ++j) { // mission_evaluation_nickname 하나씩 확인
						if ((eval_nickname.get(j)).equals(user_nickname)) { // 전에 한 미션 내용
							break;
						} else { // 평가 안 한 미션 내용
							if (eval_nickname.size() == j + 1) { // 마지막 for문 일 때
								// 사진과 동영상 경로
								if (userMissionsDto.getUpload_image() != null) {
									String[] upload_image = userMissionsDto.getUpload_image().split("/");
									System.out.println(upload_image);
									request.setAttribute("upload_image", upload_image);
								} else if (userMissionsDto.getUpload_video() != null) {
									String[] upload_video = userMissionsDto.getUpload_video().split("/");
									request.setAttribute("upload_video", upload_video);
								}
								request.setAttribute("userMissionsDto", userMissionsDto);
								request.setAttribute("profile_picture", profile_picture);
								request.setAttribute("result", result);
								request.setAttribute("mission_state_id", mission_state_id);
								// 2중 for문 탈출도 넣고
								// break loop;
								return new ModelAndView("user/pages/user_eval");
							} else { // 마지막 for문이 아닐 때
								continue;
							} // if 마지막 for문인지 확인
						} // if 전에 한 미션인지 확인
					} // for mission_evaluation_nickname 하나씩 확인
				} else { // 아직 미션을 아무도 평가 안 함 mission_evaluation_nickname가 null값
					// 사진과 동영상 경로
					if (userMissionsDto.getUpload_image() != null) {
						String[] upload_image = userMissionsDto.getUpload_image().split("/");
						for(String image : upload_image) {
							contents.add(image);
						}
					} else if (userMissionsDto.getUpload_video() != null) {
						String[] upload_video = userMissionsDto.getUpload_video().split("/");
						for(String video : upload_video) {
							contents.add(video);
						}
					}
					request.setAttribute("contents", contents);
					request.setAttribute("userMissionsDto", userMissionsDto);
					request.setAttribute("profile_picture", profile_picture);
					request.setAttribute("result", result);
					request.setAttribute("mission_state_id", mission_state_id);
					return new ModelAndView("user/pages/user_eval");
				} // if 미션을 평가한 유저가 존재하는지

			} // for list dto 반복문
		}
		result = 0;

		request.setAttribute("result", result);
		return new ModelAndView("user/pages/user_eval");
	}
}