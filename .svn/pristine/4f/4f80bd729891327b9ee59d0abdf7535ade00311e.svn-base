<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/teacher/head.jsp" %>
<style>
	.notice-table th{
		background-color: #f9f9f9;
	}
</style>
<script>
window.onload = function()
{
	$("#key").keyup(function(e){
		if (e.key == "Enter") 
		{
			DoSearch();
		}
	});
	
	$("#btnSearch").click(function(){
		DoSearch();
	});
}

function DoSearch()
{
	document.location = "list.do?kind=" + $("#kind").val() + "&key=" + encodeURI($("#key").val());
}
</script>
    <div class="main-container">
      <aside>
        <div class="side-menu-top">
         	<a href="../notice/list.do" class="menu-item active">공지사항</a>
            <a href="../subject/list.do" class="menu-item">과목 관리</a>
            <a href="../task/list.do" class="menu-item">과제 게시판</a>
        </div>
<%@ include file="../../include/teacher/side.jsp" %>           
      </aside>
        
        <main>
            <div class="content-title">공지사항</div>
            <br>
            <div class="d-flex align-items-center justify-content-between">
		    <!-- 왼쪽 영역: 내부 요소들을 flex로 정렬하고 gap으로 간격 조절 -->
		    <div id="span-left" class="d-flex align-items-center gap-2">
		        <select id="kind" name="kind" class="form-select form-select-sm" style="width: auto;">
		            <option value="1" <c:if test="${ kind.equals('1') }">selected</c:if>>제목</option>
		            <option value="2" <c:if test="${ kind.equals('2') }">selected</c:if>>제목 + 내용</option>
		        </select>
		        <input type="text" id="key" name="key" class="form-control form-control-sm" style="width: 150px;" value="${ key }">
		        <button id="btnSearch" class="btn btn-secondary btn-sm" style="width:100px; padding: 5px;">검색</button>
		    </div>
		
		    <!-- 오른쪽 영역: 세로 중앙 정렬 보장 -->
		    <div id="span-right" class="d-flex align-items-center">
		        <span>전체 갯수 : ${ total }개 / 현재 페이지 : ${ pageno }페이지</span>
		    </div>
		</div>
		<br>
            <table class="notice-table">
                <thead>
                    <tr>
                        <th class="col-no">번호</th>
                        <th>제목</th>
                        <th class="col-date">작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="vo" items="${ list }">
					<tr>
						<td class="col-no">${ vo.nno }</td>
						<td style="text-align:left;"><a href="view.do?kind=${ kind }&key=${ key }&page=${ pageno }&no=${ vo.nno }">${ vo.title }</a></td>
						<td class="col-date">${ vo.wdate }</td>
					</tr>
				</c:forEach>
                </tbody>
            </table>

            <div class="pagination gap-2" style="text-align: center;">
			<c:if test="${ startbk != 1 }">
				<a href="list.do?kind=${ kind }&key=${ key }&page=${ startbk - 2 }" class="page-num">◀</a>
			</c:if> 
			<c:forEach var="page" begin="${startbk}" end="${endbk}">
				<c:if test="${ page == pageno }">
					<a href="list.do?kind=${ kind }&key=${ key }&page=${ page }" class="page-num active">${ page }</a>
				</c:if>
				<c:if test="${ page != pageno }">
					<a href="list.do?kind=${ kind }&key=${ key }&page=${ page }" class="page-num">${ page }</a>
				</c:if>				
			</c:forEach> 
			<c:if test="${ endbk < maxpage }">
				<a href="list.do?kind=${ kind }&key=${ key }&page=${ endbk + 1 }" class="page-num">▶</a>
			</c:if>
		</div>
        </main>
    </div>

</body>
</html>