package handler.board;

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
public class BoardContentHandler implements CommandHandler {
	
	@Resource
	private BoardDao boardDao;
	
	@RequestMapping( "/content" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String pageNum = request.getParameter( "pageNum" );
		int num = Integer.parseInt( request.getParameter( "num" ) );
		int number = Integer.parseInt( request.getParameter( "number" ) );
	
		BoardDataBean boardDto = boardDao.getArticle( num );
		if( ! boardDto.getIp().equals( request.getRemoteAddr() ) )
			boardDao.addCount( num );
		
		request.setAttribute( "number", number );
		request.setAttribute( "boardDto", boardDto );
		request.setAttribute( "pageNum", pageNum );
	
		return new ModelAndView( "board/content" );
	}
}








