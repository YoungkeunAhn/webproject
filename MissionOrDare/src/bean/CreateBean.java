package bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import manager.managemessage.ManageMessageDBBean;
import manager.managemessage.ManageMessageDao;
import manager.managemission.ManageMissionDBBean;
import manager.managemission.ManageMissionDao;
import manager.manageuser.ManageUserDBBean;
import manager.manageuser.ManageUserDao;
import manager.member.MemberManagerDBbean;
import manager.member.MemberManagerDao;
import manager.supermanager.SupermanagerDBBean;
import manager.supermanager.SupermanagerDao;

@Configuration
public class CreateBean {
	
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
		viewResolver.setViewClass( JstlView.class );
		viewResolver.setPrefix( "/" );
		viewResolver.setSuffix( ".jsp" );
		return viewResolver;
	}
}









