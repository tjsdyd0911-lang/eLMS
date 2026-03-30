/************************************
 * 클래스 : 회원정보(user) 테이블용 VO
 * 작성자 : 박윤희
 * 작성일 : 2026.02.03
 * ***********************************/

package com.elms.vo;

public class UserVO {
	private int    uno;   	//사용자 번호 
	private String uid;   	//이메일
	private String pw; 	  	//비밀번호
	private String num;   	//학번/사번
	private String name;	//이름
	private String major;	//학과
	private String hp;		//핸드폰번호
	private String jdate;	//가입일
	private String status;	//현재상태
	private String appr;	//승인여부
	private String utype;	//구분
	
	public int getUno() 	  { return uno;	  }
	public String getUid()    { return uid;   }
	public String getPw()     { return pw;	  }
	public String getNum()    { return num;	  }
	public String getName()   { return name;  }
	public String getMajor()  { return major; }
	public String getHp() 	  { return hp;	  }
	public String getJdate()  { return jdate; }
	public String getStatus() { return status;}
	public String getAppr()   { return appr;  }
	public String getUtype()  { return utype; }
	public String getMajorName(){
		if(major.equals("01")) return "컴퓨터공학과";
		if(major.equals("02")) return "경영학과";
		if(major.equals("03")) return "국어국문학과";
		if(major.equals("04")) return "기계공학과";
		if(major.equals("05")) return "사회학과";
		if(major.equals("06")) return "시각디자인학과";
		if(major.equals("07")) return "심리학과";
		if(major.equals("08")) return "생명공학과";
		if(major.equals("09")) return "전자공학과";
		if(major.equals("10")) return "정치외교학과";
		return "학과없음";
	}
	
	public void setUno(int uno) 	  	 { this.uno = uno; 		 }
	public void setUid(String uid) 	 	 { this.uid = uid; 		 }
	public void setPw(String pw) 		 { this.pw = pw; 		 }
	public void setNum(String num) 		 { this.num = num;		 }
	public void setName(String name) 	 { this.name = name;	 }
	public void setMajor(String major)   { this.major = major;	 }
	public void setHp(String hp) 		 { this.hp = hp;		 }
	public void setJdate(String jdate) 	 { this.jdate = jdate;   }
	public void setStatus(String status) { this.status = status; }
	public void setAppr(String appr) 	 { this.appr = appr;	 }
	public void setUtype(String utype) 	 { this.utype = utype;	 }
	
	
	
}
