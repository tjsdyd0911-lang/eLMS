/************************************
 * 클래스 : 수강신청(apply) 테이블용 VO
 * 작성자 : 박윤희
 * 작성일 : 2026.02.03
 * ***********************************/
package com.elms.vo;

public class ApplyVO {
	private int ano;  //수강신청번호
	private int uno;  //사용자번호
	private int sno;  //과목번호
	
	public int getAno() { return ano; }
	public int getUno() { return uno; }
	public int getSno() { return sno; }
	
	public void setAno(int ano) { this.ano = ano; }
	public void setUno(int uno) { this.uno = uno; }
	public void setSno(int sno) { this.sno = sno; }
	
	
}
