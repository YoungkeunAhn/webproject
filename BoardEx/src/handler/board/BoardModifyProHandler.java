package handler.board;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import board.BoardDao;
import board.BoardDataBean;
import handler.CommandHandler;

@Controller
public class BoardModifyProHandler implements CommandHandler {
	
	@Resource
	private BoardDao boardDao;
	
	@RequestMapping( "/modifyPro" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding( "utf-8" );
		String pageNum = request.getParameter( "pageNum" );

		BoardDataBean boardDto = new BoardDataBean();
		boardDto.setNum( Integer.parseInt( request.getParameter( "num" ) ) );
		boardDto.setEmail( request.getParameter( "email" ) );
		boardDto.setSubject( request.getParameter( "subject" ) );
		boardDto.setContent( request.getParameter( "content" ) );
		boardDto.setPasswd( request.getParameter( "passwd" ) );
		
		int result = boardDao.modifyArticle( boardDto );

		request.setAttribute( "result", result );
		request.setAttribute( "pageNum", pageNum );
		
		return new ModelAndView( "board/modifyPro" );
	}
}







