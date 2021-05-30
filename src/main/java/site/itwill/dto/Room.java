package site.itwill.dto;

import org.springframework.web.multipart.MultipartFile;

/*
이름         널?       유형            
---------- -------- ------------- 
RM_NO      NOT NULL NUMBER(2)     
RM_NAME             VARCHAR2(100) 
RM_PPL              NUMBER(2)     
RM_MAX              NUMBER(2)     
RM_IMG              VARCHAR2(50)  
RM_CONTENT          VARCHAR2(900) 
RM_PRICE            NUMBER(10) 
*/
public class Room {
	private int rmNo;
	private String rmName;
	private int rmPpl;
	private int rmMax;
	private String rmImg;
	private String rmContent;
	private int rmPrice;
	
	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public Room() {
		// TODO Auto-generated constructor stub
	}

	public int getRmNo() {
		return rmNo;
	}

	public void setRmNo(int rmNo) {
		this.rmNo = rmNo;
	}

	public String getRmName() {
		return rmName;
	}

	public void setRmName(String rmName) {
		this.rmName = rmName;
	}

	public int getRmPpl() {
		return rmPpl;
	}

	public void setRmPpl(int rmPpl) {
		this.rmPpl = rmPpl;
	}

	public int getRmMax() {
		return rmMax;
	}

	public void setRmMax(int rmMax) {
		this.rmMax = rmMax;
	}

	public String getRmImg() {
		return rmImg;
	}

	public void setRmImg(String rmImg) {
		this.rmImg = rmImg;
	}

	public String getRmContent() {
		return rmContent;
	}

	public void setRmContent(String rmContent) {
		this.rmContent = rmContent;
	}

	public int getRmPrice() {
		return rmPrice;
	}

	public void setRmPrice(int rmPrice) {
		this.rmPrice = rmPrice;
	}
	
	
	
	
	
	
	
}
