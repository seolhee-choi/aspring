package site.itwill.dto;

import org.springframework.web.multipart.MultipartFile;

/*
CREATE TABLE review (
rv_no NUMBER(5) PRIMARY KEY,
m_id VARCHAR2(50),
rm_no NUMBER(5),
rsv_no NUMBER(5),
rv_title VARCHAR2(200),
rv_content VARCHAR2(2000),
rv_img VARCHAR2(100),
rv_write_date DATE,
rv_hits NUMBER(5),
CONSTRAINT review_u_id_fk FOREIGN KEY (m_id)
REFERENCES member(m_id),
CONSTRAINT review_rm_no FOREIGN KEY (rm_no)
REFERENCES product(rm_no)
);

CREATE SEQUENCE review_seq;
 */
public class Review {
	private int rvNo;
	private String mId;
	private int rmNo;
	private int rsvNo;
	private String rvTitle;
	private String rvContent;
	private String rvImg;
	private String rvWriteDate;
	private int rvHits;
	private MultipartFile file;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public int getRvNo() {
		return rvNo;
	}

	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public int getRmNo() {
		return rmNo;
	}

	public void setRmNo(int rmNo) {
		this.rmNo = rmNo;
	}

	public int getRsvNo() {
		return rsvNo;
	}

	public void setRsvNo(int rsvNo) {
		this.rsvNo = rsvNo;
	}

	public String getRvTitle() {
		return rvTitle;
	}

	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}

	public String getRvContent() {
		return rvContent;
	}

	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}

	public String getRvImg() {
		return rvImg;
	}

	public void setRvImg(String rvImg) {
		this.rvImg = rvImg;
	}

	public String getRvWriteDate() {
		return rvWriteDate;
	}

	public void setRvWriteDate(String rvWriteDate) {
		this.rvWriteDate = rvWriteDate;
	}

	public int getRvHits() {
		return rvHits;
	}

	public void setRvHits(int rvHits) {
		this.rvHits = rvHits;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	
	
	
}
