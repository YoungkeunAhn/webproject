package analysis;

import java.util.List;

import Dtos.UsersDto;

public interface AnalysisDao {
	public String nickCheck( String user_nickname );
	public List<UsersDto> allUserInfo();
}
