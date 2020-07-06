package manager.managereport;

import java.util.List;
import java.util.Map;

import Dtos.ReportBoardDto;

public interface ManageReportDao {
	public int getReportCount();
	public List<ReportBoardDto> getReportArticles(Map<String,Integer> map);
}
