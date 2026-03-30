<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/admin/head.jsp" %>
<script>
window.onload = function() 
{
    // 1. 변경사항 저장 버튼 클릭 이벤트
    // (HTML 버튼에 class="btnUpdateStatus"를 추가해야 합니다)
    $(".btnUpdateStatus").click(function() {
    	StudentStatus();
    });

    // 2. 전체 선택 체크박스 클릭 이벤트
    $("#checkAll").click(function() {
        if ($("#checkAll").is(":checked")) {
            $("input[name='studentCheck']").prop("checked", true);
        } else {
            $("input[name='studentCheck']").prop("checked", false);
        }
    });
    
    // 3. 선택 일괄 승인
    $("#btnAccept").click(function(){
    	StudentAccept();
    });
}

function StudentStatus() {
    // 1. 선택된 상태 값 가져오기
    var statusVal = $("#Sstatus").val();
    
    // 2. 유효성 검사
    if( statusVal == "" ){
        alert("변경할 상태를 선택해 주세요.");
        $("#Sstatus").focus();
        return;
    }

    // 체크된 학생 가져오기
    var checkedBoxes = $("input[name='studentCheck']:checked"); 
    
    if(checkedBoxes.length == 0) {
        alert("상태를 변경할 학생을 선택해 주세요.");
        return;
    }
   
    // 첫 번째로 체크된 학생의 uno를 가져옴 
    var targetUno = "";
    for(i = 0 ; i < checkedBoxes.length ; i++) 
    {	
    	if(targetUno != "")
    	{
    		targetUno += ",";	
    	}
    	targetUno += checkedBoxes[i].value;
    }
    
     if(!confirm("선택한 학생의 상태를 변경하시겠습니까?")) {
        return;
    }
    
    // AJAX 전송
    $.ajax({
        url: "updateStatus.do", // Controller의 @RequestMapping 값과 일치
        type: "post",
        data : {
            status : statusVal, // UserVO의 필드명(status)과 일치
            uno    : targetUno  // UserVO의 필드명(uno)과 일치
        },
        success : function(data) {
            if( data.trim() == "OK" ) { 
                alert("상태가 성공적으로 변경되었습니다.");
                location.reload(); 
            } else {
                alert("상태 변경에 실패했습니다.");
            }
        },
        error : function() {
            alert("서버 통신 중 오류가 발생했습니다.");
        }
    });
}

function StudentAccept()
{
    // 체크된 교사 가져오기
    var checkedBoxes = $("input[name='studentCheck']:checked"); 
    
    if(checkedBoxes.length == 0) {
        alert("일괄 승인 처리할 교사를 선택해 주세요.");
        return;
    }
 // 첫 번째로 체크된 학생의 uno를 가져옴 
    var targetUno = "";
    for(i = 0 ; i < checkedBoxes.length ; i++)
    {
    	if(targetUno != "")
    	{
    		targetUno += ",";	
    	}
    	targetUno += checkedBoxes[i].value;
    }
 
    if(!confirm("선택한 교사를 일괄승인하시겠습니까?")) {
        return;
    }	
    
    // AJAX 전송
    $.ajax({
        url: "updateAccept.do", // Controller의 @RequestMapping 값과 일치
        type: "post",
        data : {
            uno    : targetUno  // UserVO의 필드명(uid)과 일치
        },
        success : function(data) {
            if( data.trim() == "OK" ) { 
                alert("상태가 성공적으로 변경되었습니다.");
                location.reload(); 
            } else {
                alert("상태 변경에 실패했습니다.");
            }
        },
        error : function() {
            alert("서버 통신 중 오류가 발생했습니다.");
        }
    });    
}
    
</script>
    <div class="main-container">
        <aside>
            <div class="side-menu-top">
                <a href="../notice/list.do" class="menu-item">공지사항</a>
                <a href="../teacher/list.do" class="menu-item">교수 관리</a>
                <a href="../student/list.do" class="menu-item active">학생 관리</a>
            </div>
        </aside>
		<!-- 본문 내용 -->
		<main class="content-area">
			<!-- 상단 제목 및 버튼 -->
			<div class="d-flex justify-content-between align-items-center">
				<h2 class="page-title">학생 관리</h2>
				<div class="d-flex gap-2">
					<select id="Sstatus" name="Sstatus" class="form-select form-select-sm">
						<option value="">상태변경</option>
						<option value="01">재학</option>
						<option value="02">휴학</option>
						<option value="03">제적</option>
					</select>
					<button class="btn-top-green btnUpdateStatus">변경사항 저장</button>				
				</div>
			</div>

			<hr style="border-top: 1px solid #dee2e6; margin-bottom: 0;">
			
			<!-- 테이블 -->
			<table class="custom-table">
				<colgroup>
					<col style="width: 5%;">
					<col style="width: 10%;">
					<col style="width: 15%;">
					<col style="width: 15%;">
					<col style="width: 20%;">
					<col style="width: 20%;">
					<col style="width: 15%;">
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox" class="form-check-input" id="checkAll"></th>
						<th>번호</th>
						<th>학번</th>
						<th>이름</th>
						<th>학과</th>
						<th>가입일</th>
						<th>현재상태</th>
					</tr>
				</thead>
				<tbody>
					
					 <c:forEach var="user" items="${list}" varStatus="vs">
                    <tr>
                        <td><input type="checkbox" id="studentCheck" name="studentCheck" class="form-check-input" value="${user.uno}"></td>
                        <%-- 번호 역순 출력 공식 --%>
                        <td>${total - ((pageno - 1) * 10) - vs.index}</td>
                        <td>${user.num}</td>
                        <td>${user.name}</td>
						<%-- 학과 01 : 컴퓨터 공학과 처리합니다. --%>
						<td>
							<c:choose>
								<c:when test="${user.major == '01'}">컴퓨터공학과</c:when>
								<c:when test="${user.major == '02'}">경영학과</c:when>
								<c:when test="${user.major == '03'}">국어국문학과</c:when>
								<c:when test="${user.major == '04'}">기계공학과</c:when>
								<c:when test="${user.major == '05'}">사회학과</c:when>
								<c:when test="${user.major == '06'}">시각디자인학과</c:when>
								<c:when test="${user.major == '07'}">심리학과</c:when>
								<c:when test="${user.major == '08'}">생명공학과</c:when>
								<c:when test="${user.major == '09'}">전자공학과</c:when>
								<c:when test="${user.major == '10'}">정치외교학과</c:when>
								<c:otherwise>컴퓨터공학과</c:otherwise>
							</c:choose>		
						</td>                        
                        <td>${user.jdate}</td>
                        <td>
					
						<c:choose>
                               <c:when test="${user.status == '01'}">
                                   <span class="status-badge badge-active">재학</span>
                               </c:when>
                               <c:when test="${user.status == '02'}">
                                   <span class="status-badge badge-on-leave">휴학</span>
                               </c:when>
                               <c:when test="${user.status == '03'}">
                                   <span class="status-badge badge-retired">제적</span>
                               </c:when>
                           </c:choose>                             
                       </td>
                    </tr>
                </c:forEach>
                <%-- 데이터가 없을 경우 처리 --%>
                <c:if test="${empty list}">
                    <tr>
                        <td colspan="7" style="text-align:center;">조회된 학생이 없습니다.</td>
                    </tr>
                </c:if>
				</tbody>
			</table>

			<!-- 하단 페이지네이션 및 버튼 -->
            <div class="pagination gap-2" style="justify-content: center; display: flex; margin-top: 20px;">
	            <c:if test="${ startbk > 1 }">
	                <a href="list.do?kind=${kind}&key=${key}&page=${startbk - 1}&status=${status}" class="page-num">◀</a>
	            </c:if> 
	            <c:forEach var="page" begin="${startbk}" end="${endbk}">
	                <a href="list.do?kind=${kind}&key=${key}&page=${page}&status=${status}" 
	                   class="page-num ${page == pageno ? 'active' : ''}">${page}</a>
	            </c:forEach> 
	            <c:if test="${ endbk < maxpage }">
	                <a href="list.do?kind=${kind}&key=${key}&page=${endbk + 1}&status=${status}" class="page-num">▶</a>
	            </c:if>
        	</div>
    </main>
</div>

	<!-- 부트스트랩 JS (필요시) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>