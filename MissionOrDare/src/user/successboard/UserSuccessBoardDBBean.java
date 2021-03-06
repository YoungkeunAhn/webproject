package user.successboard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.LikeDto;
import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionCategoryDto;
import Dtos.MissionStateDto;
import Dtos.MissionStateSuccessBoardDto;
import Dtos.ReplyDto;
import Dtos.ReportBoardDto;
import Dtos.UsersDto;

public class UserSuccessBoardDBBean implements UserSuccessBoardDao {
	SqlSession session = SqlMapClient.getSession();
	
	public List<MissionStateSuccessBoardDto> getSuccessMissions(){
		return session.selectList("success.getSuccessMissions");
	}
	public List<MissionStateSuccessBoardDto> getSuccessPopularityMissions(){
		return session.selectList("success.getSuccessPopularityMissions");
	}
	public List<MissionCategoryDto> findLargeCategorys(Map<String, Object> map){
		return session.selectList("success.findLargeCategorys", map);
	}
	public List<MissionCategoryDto> findSmallCategorys(Map<String, Object> map){
		return session.selectList("success.findSmallCategorys", map);
	}
	public List<MissionStateSuccessBoardDto> getUserMissions(String searchUser) {
		return session.selectList("success.getUserMissions", searchUser);
	}
	public List<MissionStateSuccessBoardDto> getCategoryMissions(String searchCategory){
		return session.selectList("success.getCategoryMissions", searchCategory);
	}
	public List<MissionCategoryDto> findCategorys(Map<String, Object> map){
		return session.selectList("success.findCategorys", map);
	}
	public MissionCategoryAndInfoDto getMissionInfo(String success_board_id) {
		return session.selectOne("success.getMissionInfo", success_board_id);
	}
	public UsersDto getUserInfo(String success_board_id) {
		return session.selectOne("success.getUserInfo", success_board_id);
	}
	public MissionStateDto getAuthMissionInfo(String success_board_id) {
		return session.selectOne("success.getAuthMissionInfo", success_board_id);
	}
	public int replyInsert(ReplyDto replyDto) {
		return session.insert("success.replyInsert",replyDto);
	}
	public List<ReplyDto> replyList(String success_board_id) {
		return session.selectList("success.replyList",success_board_id);
	}
	public int getRef(String reply_id) {
		return session.selectOne("success.getRef", reply_id );
	}
	public int rereplyInsert(ReplyDto replyDto) {
		return session.insert("success.rereplyInsert", replyDto );
	}
	
	
	//좋아요
	public int insertLike(LikeDto likeDto) {
		return session.insert("success.insertLike",likeDto);
	}
	public int deleteLike(LikeDto likeDto) {
		return session.delete("success.deleteLike",likeDto);
	}
	public int checkLike(LikeDto likeDto) {
		return session.selectOne("success.checkLike",likeDto);
	}
	public int updateLike(String success_board_id) {
		return session.update("success.updateLike",success_board_id);
	}
	public int selectLikeCount(String success_board_id) {
		return session.selectOne("success.selectLikeCount",success_board_id);
	}
	
	//신고
	public int insertReportReply(ReportBoardDto reportBoardDto) {
		return session.insert("success.insertReportReply",reportBoardDto);
	}
	public ReplyDto selectInfo(String reply_id) {
		return session.selectOne("success.selectInfo",reply_id);
	}
	public String selectBoard(String success_board_id) {
		return session.selectOne("success.selectBoard",success_board_id);
	}
	public int insertReportBoard(ReportBoardDto reportBoardDto) {
		return session.insert("success.insertReportBoard", reportBoardDto);
	}
	public String selectProfile(String reported_nickname) {
		return session.selectOne("success.selectProfile",reported_nickname);
	}
	
	//공개여부
	public int availability(String mission_state_id) {
		return session.insert("success.availability",mission_state_id);
	}
}
