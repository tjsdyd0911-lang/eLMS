<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="side-menu-bottom">
    <div class="menu-section-title">나의 수강 과목</div>
    <a href="../task/list.do" class="course-item ${empty param.sno ? 'active' : ''}">전체 보기</a>
    <c:set var="colorStr" value="#e74c3c,#f39c12,#2ecc71,#3498db,#9b59b6" />
    <c:set var="colors" value="${ fn:split(colorStr, ',') }" />
    <c:forEach var="apply" items="${ sessionScope.applys }" varStatus="status">
    	<a href="../task/list.do?sno=${ apply.sno }" class="course-item ${param.sno == apply.sno || param.tno == apply.tno ? 'active' : ''}"><span class="dot" style="background:${ colors[status.index % 5] };"></span>${ apply.sname }</a>
    </c:forEach>
 </div>