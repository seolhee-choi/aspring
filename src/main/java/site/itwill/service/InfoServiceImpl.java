package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.InfoDAO;
import site.itwill.dto.Info;
@Service
public class InfoServiceImpl implements InfoService{
	@Autowired 
	private InfoDAO infoDAO; // DAO 의존성 주입
	
	@Transactional
	@Override
	public void addInfo(Info info) {
		infoDAO.insertInfo(info);
	}
	@Transactional
	@Override
	public void removeInfo(int infoNo) {
		infoDAO.deleteInfo(infoNo);
		
	}
	@Transactional
	@Override
	public void modifyInfo(Info info) {
		infoDAO.updateInfo(info);
		
	}
	@Transactional
	@Override
	public void modifyCountInfo(int infoNo) {
		infoDAO.updateCountInfo(infoNo);
		
	}

	@Override
	public Info getInfo(int infoNo) {
		return infoDAO.selectInfo(infoNo);
	}

	@Override
	public int getInfoCount() {
		return infoDAO.selectInfoCount();
	}

	@Override
	public List<Info> getInfoTitleInfoList(Map<String, Object> map) {
		return infoDAO.selectInfoTitleInfoList(map);
	}

	@Override
	public List<Info> getSearchInfoList(Map<String, Object> map) {
		return infoDAO.selectSearchInfoList(map);
	}
	
}
