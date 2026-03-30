<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/student/head.jsp"%>
<script>
window.onload = function(){
	$("tr > #score-none").each(function(index, element) {
		type = $(element).text().trim();
		switch(type)
		{
			case "PASS": $(element).css({'color':'blue', 'font-weight':'bold'}); break;
			case "FALSE": $(element).css({'color':'red', 'font-weight':'bold'}); break;
		}					
	});
}
</script>
    <div class="main-container">
        <aside>
            <div class="side-menu-top">
             	<a href="../notice/list.do" class="menu-item">공지사항</a>
                <a href="../apply/apply.do" class="menu-item">수강 신청</a>
                <a href="../task/list.do" class="menu-item active">과제 관리</a>
            </div>
 <%@ include file="../../include/student/side.jsp"%>         
        </aside>

        <main>
            <div class="content-header">
                <h2 class="content-title">과제 관리</h2>
            </div>

            <div class="filter-container">
                <button name="classType" class="filter-btn ${kind == 'all' || empty kind ? 'active' : ''}" onclick="switchClassType('all');">전체</button>
                <button name="classType" class="filter-btn ${kind == 'unsubmitted' || empty kind ? 'active' : ''}" onclick="switchClassType('unsubmitted');">미제출</button>
                <button name="classType" class="filter-btn ${kind == 'submitted' || empty kind ? 'active' : ''}" onclick="switchClassType('submitted');">제출완료</button>
                <button name="classType" class="filter-btn ${kind == 'graded' || empty kind ? 'active' : ''}" onclick="switchClassType('graded');">점수확인</button>
            </div>

            <div class="assignment-card">
                <table class="assignment-table">
                    <thead>
                        <tr>
                            <th width="8%">상태</th>
                            <th width="15%">과목명</th>
                            <th width="32%">과제 제목</th>
                            <th width="15%">첨부파일</th>
                            <th width="12%">마감일</th>
                            <th width="10%">점수</th>
                            <th width="8%">관리</th>
                        </tr>
                    </thead>
                    <tbody>	
                    	<jsp:useBean id="now" class="java.util.Date"/>
                    	<fmt:formatDate value="${ now }" pattern="yyyyMMdd" var="today"/>
                    	<c:forEach var="task" items="${ tasks }">
                       		<tr>
                       			<c:choose>
                       				<c:when test="${ task.scheck == 'Y' }">
                       					<td><span class="status-tag tag-graded">점수완료</span></td>
                       					<td class="td-subject">${ task.sname }</td>
                       					<td class="td-title"><a href="t_view.do?sno=${ task.sno }&tno=${ task.tno }">${ task.title }</a></td>
                       					<td><a href="down.do?type=0&tno=${ task.tno }" class="file-link"><i class="fa-solid fa-paperclip"></i> ${ task.fname }</a></td>
                       					<td>${ task.edate }</td>
		                       			<td id="score-none" class="score-none">
		                       				<c:choose>
		                       					<c:when test="${ task.stype == '01' }">
		                       						${ task.score } / 100
		                       					</c:when>
		                       					<c:when test="${ task.stype == '02' }">
			                       					<c:choose>
														<c:when test="${task.score == 'F'}">FALSE</c:when>	
														<c:when test="${task.score == 'P'}">PASS</c:when>	
														<c:otherwise>점수 입력 오류</c:otherwise>
													</c:choose>
		                       					</c:when>
		                       					<c:otherwise>오류</c:otherwise>
		                       				</c:choose>
		                       			</td>
		                       			<td><a href="view.do?sno=${ task.sno }&tno=${ task.tno }"><button class="btn-action btn-gray">점수확인</button></a></td>
                       				</c:when>
                       				<c:when test="${ task.scheck == 'N' }">
                       					<td><span class="status-tag tag-submitted">제출완료</span></td>
                       					<td class="td-subject">${ task.sname }</td>
                       					<td class="td-title"><a href="t_view.do?sno=${ task.sno }&tno=${ task.tno }">${ task.title }</a></td>
                       					<td><a href="down.do?type=0&tno=${ task.tno }" class="file-link"><i class="fa-solid fa-paperclip"></i> ${ task.fname }</a></td>
                       					<td>${ task.edate }</td>
		                       			<td class="score-none">-</td>
		                       			<td><a href="view.do?sno=${ task.sno }&tno=${ task.tno }"><button class="btn-action btn-gray">보기</button></a></td>
                       				</c:when>
                       				<c:otherwise>
                       					<td><span class="status-tag tag-unsubmitted">미제출</span></td>
                       					<td class="td-subject">${ task.sname }</td>
                       					<td class="td-title"><a href="t_view.do?sno=${ task.sno }&tno=${ task.tno }">${ task.title }</a></td>
                       					<td><a href="down.do?type=0&tno=${ task.tno }" class="file-link"><i class="fa-solid fa-paperclip"></i> ${ task.fname }</a></td>
                       					<td>${ task.edate }</td>
		                       			<td class="score-none">-</td>
		                       			<c:choose>
		                       				<c:when test="${ today > fn:replace(task.edate, '-','') }">
		                       					<td><button class="btn-action bg-danger" disabled>제출마감</button></td>
                       						</c:when>
                       						<c:otherwise>
                       							<td><a href="write.do?sno=${ task.sno }&tno=${ task.tno }"><button class="btn-action btn-blue">과제제출</button></a></td>
                       						</c:otherwise>
                       					</c:choose>
                       				</c:otherwise>
                       			</c:choose>
                       		</tr>
                       	</c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="pagination gap-2" style="text-align: center;">
				<c:if test="${ startbk != 1 }">
					<a href="list.do?kind=${ kind }&page=${ startbk - 1 }" class="page-num">◀</a>
				</c:if> 
				<c:forEach var="page" begin="${startbk}" end="${endbk}">
					<a href="list.do?kind=${ kind }&page=${ page }" class="page-num ${ page == currentpg ? 'active' : '' }">${ page }</a>
				</c:forEach> 
				<c:if test="${ endbk < maxpage }">
					<a href="list.do?kind=${ kind }&page=${ endbk + 1 }" class="page-num">▶</a>
				</c:if>
			</div>
        </main>
    </div>

    <!-- 부트스트랩 JS (필요시 사용) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	    <script>
        function switchClassType(type) {
	       	location.href = "list.do?kind=" + type + "&page=1";
        }         
    </script>

</body>
</html>