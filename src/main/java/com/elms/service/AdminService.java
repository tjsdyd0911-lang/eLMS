// 클래스 : 게시물정보 C/R/U/D 처리 클래스
package com.elms.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.elms.vo.*;

@Service
public class AdminService {
	@Autowired
	private SqlSession session;

	private static final String namespace  = "elms.admin";

	// 게시물을 등록한다.
	// return true : 등록 성공, false : 등록 실패
	public boolean NoticeInsert(NoticeVO vo) {
		session.insert(namespace + ".notice_write", vo);
		return true;
	}

	public NoticeVO NoticeRead(String Nno) {
		NoticeVO vo = session.selectOne(namespace + ".notice_view", Nno);
		return vo;
	}

	// 게시물 정보를 변경한다.
	// return true : 변경 성공, false : 변경 실패
	public void NoticeUpdate(NoticeVO vo) {
		session.update(namespace + ".notice_update", vo);
	}
	
	public void NoticeDelete(String no) {
		session.update(namespace + ".notice_delete", no);
	}

	// 전체 게시물 갯수를 얻는다.
	public int NoticeGetTotal(String kind,String key) {
		SearchVO vo = new SearchVO();
		vo.setKind(kind);
		vo.setKey(key);
		
		int total = session.selectOne(namespace + ".notice_total", vo);
		return total;
	}

	// 게시물 목록을 얻는다.
	// pageno : 페이지 번호
	public List<NoticeVO> NoticeGetList(String kind,String key,int pageno) {
		SearchVO vo = new SearchVO();
		vo.setKind(kind);
		vo.setKey(key);

		vo.setPageno(pageno);

		List<NoticeVO> list = session.selectList(namespace + ".notice_list", vo);
		return list;
	}
	
	// 교사의 현재 상태(재직, 휴직, 퇴직)를 변경한다.
	public int TeacherUpdateStatus(UserVO vo) {
	    return session.update(namespace + ".teacher_status", vo);
	}
	
	// 검색 조건(svo)에 맞는 교사들의 전체 목록을 DB에서 가져온다.
	public List<UserVO> TeacherGetList(SearchVO svo) {
		List<UserVO> list = session.selectList(namespace + ".teacher_list", svo);
		return list;
	}

	public int TeacherGetTotal(SearchVO svo) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".teacher_total", svo);
	}
	
	@Transactional
	public void TeacherApprove(String uno) {
		session.update(namespace + ".teacher_approve", uno);
	}
	
	// 학생의 현재 상태를 변경한다.
	public int StudentUpdateStatus(UserVO vo) {
	    return session.update(namespace + ".student_status", vo);
	}
	

	public List<UserVO> StudentGetList(SearchVO svo) {
		List<UserVO> list = session.selectList(namespace + ".student_list", svo);
		return list;
	}

	public int StudentGetTotal(SearchVO svo) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".student_total", svo);
	}
	
	@Transactional
	public void StudentApprove(String uno) {
		session.update(namespace + ".student_approve", uno);
	}
}