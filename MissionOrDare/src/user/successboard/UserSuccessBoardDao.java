package user.successboard;

import java.util.List;
import java.util.Map;


import Dtos.LikeDto;
import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionCategoryDto;
import Dtos.MissionStateDto;
import Dtos.MissionStateSuccessBoardDto;
import Dtos.ReplyDto;
import Dtos.ReportBoardDto;
import Dtos.UsersDto;

public interface UserSuccessBoardDao {

	public List<MissionStateSuccessBoardDto> getSuccessMissions();
	public List<MissionStateSuccessBoardDto> getSuccessPopularityMissions();
	public List<MissionCategoryDto> findLargeCategorys(Map<String, Object> map);
	public List<MissionCategoryDto> findSmallCategorys(Map<String, Object> map);
	public List<MissionStateSuccessBoardDto> getUserMissions(String searchUser);
	public List<MissionStateSuccessBoardDto> getCategoryMissions(String searchCategory);
	public List<MissionCategoryDto> findCategorys(Map<String, Object> map);
	public MissionCategoryAndInfoDto getMissionInfo(String success_board_id);
	public UsersDto getUserInfo(String success_board_id);
	public MissionStateDto getAuthMissionInfo(String success_board_id);
	public int replyInsert(ReplyDto replyDto);
	public List<ReplyDto> replyList(String success_board_id);
	public int getRef(String reply_id);
	public int rereplyInsert(ReplyDto replyDto);
	public int insertLike(LikeDto likeDto); 
	public int deleteLike(LikeDto likeDto);
	public int checkLike(LikeDto likeDto);
	public int updateLike(String success_board_id);
	public int selectLikeCount(String success_board_id);
	public ReplyDto selectInfo(String reply_id);
	public int insertReportReply(ReportBoardDto reportBoardDto);
}
