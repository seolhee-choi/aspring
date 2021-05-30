package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Info;

public interface InfoService {
	void addInfo(Info info);
	void removeInfo(int infoNo);
	void modifyInfo(Info info);
	void modifyCountInfo(int infoNo);
	Info getInfo(int infoNo);
	
	int getInfoCount();
	List<Info> getInfoTitleInfoList(Map<String, Object> map);
	List<Info> getSearchInfoList(Map<String, Object> map);
}
