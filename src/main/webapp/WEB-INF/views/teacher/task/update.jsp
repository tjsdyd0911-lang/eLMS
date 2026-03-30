<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/teacher/head.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <div class="main-container">
      <aside>
        <div class="side-menu-top">
         	<a href="../notice/list.do" class="menu-item">공지사항</a>
            <a href="../subject/list.do" class="menu-item">과목 관리</a>
            <a href="list.do?sno=${view.sno}&sname=${sname}" class="menu-item active">과제 게시판</a>
        </div>
<%@ include file="../../include/teacher/side.jsp" %>           
      </aside>
<script>
	window.onload = function(){
		$("#title").focus();
	}
	
	function btnUpdate() {
		if( $("#title").val().trim() == "" ){
			alert("과제제목을 입력해주세요.");
			$("#title").focus();
			return;
		}
		
		if( $("#content").val().trim() == "" ){
			alert("내용을 입력해주세요.");
			$("#content").focus();
			return;
		}
		
		// 오늘-제출마감일 비교
		const edate = $("#edate").val();

		// 날짜 객체로 변환
		const edateDate = new Date(edate);    // 입력한 날짜
		const today = new Date();              // 현재 날짜와 시간

		// 시간을 00:00:00으로 초기화 (날짜만 비교하기 위함)
		// 이걸 안 하면 '오늘'을 선택해도 '지금' 시간보다 이전으로 인식될 수 있습니다.
		edateDate.setHours(0, 0, 0, 0);
		today.setHours(0, 0, 0, 0);

		if (edateDate < today) {
		    alert("제출 마감일이 오늘보다 이전입니다.");
		    return;
		}

		if(confirm("수정하시겠습니까?") == true){
			$("#frmUpdate").submit();	
		}else{
			return;
		}
	}
</script>
		<main class="edit_main">
			<!-- 1. 페이지 헤더 -->
            <div class="content-header">
                <h2 class="content-title">과제 수정</h2>
                <nav aria-label="breadcrumb">
                    <div class="breadcrumb">
                       <a href="list.do?sno=${view.sno}&sname=${sname}"> 과제 게시판 &nbsp; </a> > &nbsp; <a href="view.do?tno=${view.tno}&sname=${sname}"> 과제 정보 조회 &nbsp; </a> > &nbsp;  <span>과제수정</span>
                    </div>
                </nav>
            </div>
			<div class="edit_divider"></div>

			<form id=frmUpdate name=frmUpdate action="updateok.do" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
				<input type="hidden" id="tno" name="tno" value="${view.tno}">
				<input type="hidden" id="sname" name="sname" value="${sname}">
				<!-- 2. 과제 제목 -->
				<div class="mb-4">
					<label for="title" class="edit_form-section-title">과제 제목</label> 
					<input type="text" class="form-control" id="title" name="title" value="${view.title}">
				</div>

				<!-- 3. 과제 내용 -->
				<div class="mb-4">
					<label for="content" class="edit_form-section-title">과제 내용</label>
					<textarea class="form-control" id="content" name="content" rows="8">${view.content}</textarea>
				</div>

				<!-- 4. 정보 입력 행 (마감일, 채점방식, 구분) -->
				<div class="row edit_info-row">
					<div class="col-md-4">
						<label for="ttype" class="edit_form-section-title">구분</label> 
						<select class="form-select" id="ttype" name="ttype">
							<option value="01" ${view.ttype == '01' ? 'selected' : ''}>중간과제</option>
						    <option value="02" ${view.ttype == '02' ? 'selected' : ''}>기말과제</option>
						    <option value="03" ${view.ttype == '03' ? 'selected' : ''}>수시과제</option>
						</select>
					</div>				
					<div class="col-md-4">
						<label for="edate" class="edit_form-section-title">제출 마감일</label>
						<input type="date" class="form-control" id="edate" name="edate" value="${view.edate}">
					</div>

					<div class="col-md-4">
						<label for="stype" class="edit_form-section-title">채점방식</label>
						<select class="form-select" id="stype" name="stype">
							<option value="01" ${view.stype == '01' ? 'selected' : ''}>백분율 점수</option>
						    <option value="02" ${view.stype == '02' ? 'selected' : ''}>Pass or False 방식</option>
						</select>
					</div>
				</div>
				<br>
    	        <!-- 첨부 파일 -->
                <label class="form-label">첨부 파일 <span class="sub-text">최대 50MB까지 가능합니다.</span></label>
	            <div class="file-upload-box">
					<i class="fa-solid fa-paperclip file-icon"></i>
					<div>
						<input type="file" id="fileInput" name="attach">
					</div>
				</div>
                <div class="attachment-bar">
	                <c:choose>
						<c:when test="${ view.fname != null and !view.fname.equals('') }">
							${ view.fname }
							<a href="down.do?tno=${ view.tno }"><button class="btn-download">다운로드</button></a>
						</c:when>
						<c:otherwise>
							등록된 첨부파일이 없습니다.
						</c:otherwise>
					</c:choose>
				</div>

				<!-- 6. 버튼 영역 -->
				<div class="view_button-group">
					<button type="button" class="btn-custom btn-edit" onclick="btnUpdate();">수정완료</button>
					<button type="button" class="btn-custom btn-delete" onclick="document.location='view.do?tno=${view.tno}&sname=${sname}'">취소</button>	
				</div>
			</form>
		</main>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>