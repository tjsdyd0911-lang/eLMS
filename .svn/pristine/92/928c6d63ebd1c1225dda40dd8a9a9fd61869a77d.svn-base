/***********************************
- * 클래스 : 회원정보 C/R/U/D 처리 클래스
 * 작성자 : 진선용
 * 작성일 : 2026.02.04
***********************************/
package com.elms.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elms.vo.UserVO;

@Service
public class UserService {
	
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "elms.user";
	
	//로그인 처리
	public UserVO Login(String uid, String pw)
	{
		UserVO vo = new UserVO();
		vo.setUid(uid);
		vo.setPw(pw);
		
		vo = session.selectOne(namespace + ".login",vo);
		return vo;
	}
	
	//회원가입 처리
	public void Join(UserVO vo)
	{
		session.insert(namespace + ".join",vo);
	}
	
	//아이디 중복검사 처리
	public boolean CheckID(String uid)
	{
		UserVO vo = new UserVO();
		vo.setUid(uid);
		vo = session.selectOne(namespace + ".checkid", vo);
		
		if( vo != null ) return false;
		return true;
	}
	
	//사번-학번 중복검사
	public boolean CheckNum(String num)
	{
		System.out.println("num="+ num);
		UserVO vo = new UserVO();
		vo.setNum(num);
		vo = session.selectOne(namespace + ".checknum", vo);
		
		if( vo != null ) return false;
		return true;
	}
	
	//아이디 찾기 처리
	public UserVO IdFind(String num, String name, String hp, String utype)
	{
		UserVO vo = new UserVO();
		vo.setNum(num);
		vo.setName(name);
		vo.setHp(hp);
		vo.setUtype(utype);
		vo = session.selectOne(namespace + ".idfind", vo);
		
		return vo;
	}
	
	//(비밀번호찾기)입력정보와 일치하는 회원 찾는 처리
	public UserVO PwFind(String uid, String num, String name, String hp, String utype)
	{
		UserVO vo = new UserVO();
		vo.setUid(uid);
		vo.setNum(num);
		vo.setName(name);
		vo.setHp(hp);
		vo.setUtype(utype);
		vo = session.selectOne(namespace + ".pwfind", vo);
		
		return vo;
	}
	
	//(비밀번호찾기)비밀번호 변경 처리
	public void PwUpdate(String uid, String pw)
	{
		UserVO vo = new UserVO();
		vo.setUid(uid);
		vo.setPw(pw);
		session.update(namespace + ".pwupdate", vo);
	}

}
