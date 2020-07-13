package bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import manager.managecontent.ManageContentDBBean;
import manager.managecontent.ManageContentDao;
import manager.managemessage.ManageMessageDBBean;
import manager.managemessage.ManageMessageDao;
import manager.managemission.ManageMissionDBBean;
import manager.managemission.ManageMissionDao;
import manager.managereport.ManageReportDBBean;
import manager.managereport.ManageReportDao;
import manager.manageuser.ManageUserDBBean;
import manager.manageuser.ManageUserDao;
import manager.member.MemberManagerDBbean;
import manager.member.MemberManagerDao;
import manager.supermanager.SupermanagerDBBean;
import manager.supermanager.SupermanagerDao;
import user.missionauth.MissionAuthDBBean;
import user.missionauth.MissionAuthDao;

@Configuration
public class CreateBean {
	@Bean
	public MissionAuthDao missionAuthDao() {
		MissionAuthDBBean missionAuthDao = new MissionAuthDBBean();
		return missionAuthDao;
	}
	
	@Bean
	public ManageReportDao manageReportDao() {
		ManageReportDBBean manageReportDao = new ManageReportDBBean();
		return manageReportDao;
	}
	@Bean
	public ManageContentDao manageContentDao() {
		ManageContentDBBean manageContentDao = new ManageContentDBBean();
		return manageContentDao;
	}
	@Bean
	public SupermanagerDao supermanagerDao() {
		SupermanagerDBBean supermanagerDao = new SupermanagerDBBean();
		return supermanagerDao;
	}
	
	@Bean
	public MemberManagerDao memberManagerDao() {
		MemberManagerDBbean memberManagerDao = new MemberManagerDBbean();
		return memberManagerDao;
	}	
	@Bean
	public ManageMissionDao manageMissionDao() {
		ManageMissionDBBean manageMissionDao = new ManageMissionDBBean();
		return manageMissionDao;
	}
	
	@Bean
	public ManageMessageDao manageMessageDao() {
		ManageMessageDBBean manageMessageDao = new ManageMessageDBBean();
		return manageMessageDao;
	}
	@Bean
	public ManageUserDao manageUserDao() {
		ManageUserDBBean manageUserDao = new ManageUserDBBean();
		return manageUserDao;
	}
	
	@Bean
	public ViewResolver viewResolver() {
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		viewResolver.setContentType("utf-8");
		viewResolver.setViewClass( JstlView.class );
		viewResolver.setPrefix( "/" );
		viewResolver.setSuffix( ".jsp" );
		return viewResolver;
	}
	
	@Bean
	public MultipartResolver multipartResolver() throws Exception {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		return multipartResolver;
	}
}









