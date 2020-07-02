package bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import manager.managemission.ManageMissionDBBean;
import manager.managemission.ManageMissionDao;
import manager.member.MemberManagerDBbean;
import manager.member.MemberManagerDao;

@Configuration
public class CreateBean {
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
	public ViewResolver viewResolver() {
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		viewResolver.setViewClass( JstlView.class );
		viewResolver.setPrefix( "/" );
		viewResolver.setSuffix( ".jsp" );
		return viewResolver;
	}
}









