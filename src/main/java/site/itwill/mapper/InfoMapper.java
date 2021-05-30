package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Info;

public interface InfoMapper {
	int insertInfo(Info info);
	int deleteInfo(int infoNo);
	int updateInfo(Info info);
	int updateCountInfo(int infoNo);
	Info selectInfo(int infoNo);
	
	int selectInfoCount();
	List<Info> selectInfoTitleInfoList(Map<String, Object> map);
	List<Info> selectSearchInfoList(Map<String, Object> map);
	

}
