package com.elms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.elms.vo.UserVO;

public class TeacherInterceptor implements HandlerInterceptor
{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception 
	{
		
		HttpSession session = request.getSession(false);
		// 유저 로그인 확인 여부를 위한 조회
		UserVO login = (UserVO) session.getAttribute("login");
		// 로그인 정보 없으면 로그인 페이지로 이동
		if(login == null || !login.getUtype().equals("T"))
		{
			response.sendRedirect("../../login.do");
			return false;
		}
	
        // 모든 응답 헤더에 캐시 방지 설정 추가
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception 
	{
		// 핸들러가 실행은 완료 되었지만 아직 View가 생성되기 이전에 호출된다.
		// ModelAndView 타입의 정보가 인자값으로 받는다. 따라서 Controller에서 View 정보를 전달하기 위해 작업한        Model 객체의 정보를 참조하거나 조작할수 있다.
		// preHandle() 에서 리턴값이 fasle인경우 실행되지않음.
		// 적용중인 인터셉터가 여러개 인경우, preHandle()는 역순으로 호출된다.
		// 비동기적 요청처리 시에는 처리되지않음.		
		System.out.println("TeacherInterceptor:postHandle...");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception 
	{
		// 모든 View에서 최종 결과를 생성하는 일을 포함한 모든 작업이 완료된 후에 실행된다.
		// 요청 처리중에 사용한 리소스를 반환해주기 적당한 메서드 이다.
		// preHandle() 에서 리턴값이 false인경우 실행되지 않는다.
		// 적용중인 인터셉터가 여러개인경우 preHandle()는 역순으로 호출된다.
		// 비동기적 요청 처리시에 호출되지않음.
		System.out.println("TeacherInterceptor:afterCompletion...");
	}

}
