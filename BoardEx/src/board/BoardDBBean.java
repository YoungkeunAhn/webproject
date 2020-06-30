package board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class BoardDBBean implements BoardDao {

	SqlSession session = SqlMapClient.getSession();
	
	public int getCount() {
		return session.selectOne( "Board.getCount" );
	}
	
	public int insertArticle( BoardDataBean boardDto ) {
		int num = boardDto.getNum();
		int ref = boardDto.getRef();
		int re_step = boardDto.getRe_step();
		int re_level = boardDto.getRe_level();
		String sql = null;
		if( num == 0 ) {
			// 제목글인 경우
			int cnt = getCount();
			if( cnt != 0 ) {
				// 글이 있는 경우
				ref = (Integer) session.selectOne( "Board.getMaxNum" ) + 1;
														// 그룹화아이디 = 글번호최대값 + 1
			} else {
				// 글이 없는 경우
				ref = 1;
			}				
			re_step = 0;
			re_level = 0;
		} else {
			// 답글인 경우
			session.update( "Board.insertReply", boardDto );
			re_step ++;
			re_level ++;
		}		
		boardDto.setRef( ref );
		boardDto.setRe_step( re_step );
		boardDto.setRe_level( re_level );
		return session.insert( "Board.insertArticle", boardDto );
	}	
	
	public List<BoardDataBean> getArticles( Map<String, Integer> map ) {
		return session.selectList( "Board.getArticles", map );
	}

	public BoardDataBean getArticle( int num ) {		
		return session.selectOne( "Board.getArticle", num );
	}
	
	public void addCount( int num ) {
		session.update( "Board.addCount", num );
	}

	public int deleteArticle( int num ) {
		int result = 0;
		BoardDataBean boardDto = getArticle( num );	
		int cnt = session.selectOne( "Board.selectReply", boardDto );
		if( cnt != 0 ) {
			// 답글이 있다
			result = -1;
		} else {
			// 답글이 없다
			session.update( "Board.deleteReply", boardDto );
			result = session.delete( "Board.deleteArticle", num );		
		}
		return result;
	}

	public int modifyArticle( BoardDataBean boardDto ) {
		return session.update( "Board.modifyArticle", boardDto );
	}
		
} // class

















