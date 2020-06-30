package handler.board;

import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.BoardDBBean;
import board.BoardDao;
import board.BoardDataBean;
import handler.CommandHandler;

@Controller
public class BoardWriteProHandler implements CommandHandler {
	
	@Resource
	private BoardDao boardDao;
	
	@RequestMapping( "/writePro" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		 request.setCharacterEncoding( "utf-8" );
		 BoardDataBean boardDto = new BoardDataBean();
		 boardDto.setWriter( request.getParameter( "writer" ) );
		 boardDto.setEmail( request.getParameter( "email" ) );
		 boardDto.setSubject( request.getParameter( "subject" ) );
		 boardDto.setContent( request.getParameter( "content" ) );
		 boardDto.setPasswd( request.getParameter( "passwd" ) );
		 boardDto.setNum( Integer.parseInt( request.getParameter( "num" ) ) );
		 boardDto.setRef( Integer.parseInt( request.getParameter( "ref" ) ) );
		 boardDto.setRe_step( Integer.parseInt( request.getParameter( "re_step" ) ) );
		 boardDto.setRe_level( Integer.parseInt( request.getParameter( "re_level" ) ) );
		 
		 // reg_date 작성일
		 boardDto.setReg_date( new Timestamp( System.currentTimeMillis() ) );

		 // ip
		 boardDto.setIp( request.getRemoteAddr() );
		 
		 int result = boardDao.insertArticle( boardDto );
	
		 request.setAttribute( "result", result );
		 
		 return new ModelAndView( "board/writePro" );
	}
}











