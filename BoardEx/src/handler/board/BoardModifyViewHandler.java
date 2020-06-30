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
public class BoardModifyViewHandler implements CommandHandler {
	
	@Resource
	private BoardDao boardDao;
	
	@RequestMapping( "/modifyView" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {


		String pageNum = request.getParameter( "pageNum" );
		int num = Integer.parseInt( request.getParameter( "num" ) );	
		String passwd = request.getParameter( "passwd" );

		BoardDataBean boardDto = boardDao.getArticle( num );
		
		request.setAttribute( "pageNum", pageNum );
		request.setAttribute( "passwd", passwd );
		request.setAttribute( "boardDto", boardDto );
		request.setAttribute( "num", num );
		
		return new ModelAndView( "board/modifyView" );
	}
}







