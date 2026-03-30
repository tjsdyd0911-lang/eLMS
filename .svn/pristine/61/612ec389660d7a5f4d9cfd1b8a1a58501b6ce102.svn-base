<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/teacher/head.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	function DoDelete(obj) {
		const tno = $(obj).data("tno");
		const sno = $(obj).data("sno");
		const title = $(obj).data("title");
		const sname = $(obj).data("sname");
		const edate = $(obj).data("edate");
		
		if(confirm("'"+ title + "'" + " 과제를 삭제하시겠습니까?") == true){
			$.ajax({
				url: "task_del.do/" + tno + "/" + edate,
				type: "DELETE",
				dataType: "html",
				success : function(data)
				{
						alert(data); //"삭제되었습니다." 문구가 팝업으로 뜸
						document.location = "../../teacher/task/list.do?sno=" + sno + "&sname=" + sname;
				},
				error : function(xhr, status, error) {
			        if (xhr.status == 409) {
			            alert(xhr.responseText); // "해당 과제를 제출한 학생이 있습니다." 문구가 팝업으로 뜸
			        }else if(xhr.status == 412){
			        	alert(xhr.responseText); // "제출 마감일이 지났습니다." 문구가 팝업으로 뜸
			        }else{
			        	alert("삭제실패 : 재시도 또는 관리자에게 문의하세요.");
			            console.log("Error Code: " + xhr.status);
			        } 
			        
			    }
			});
		}
	}
</script>

		<main class="view_main">
            <div class="content-header">
                <h2 class="content-title">과제 정보 조회</h2>
                <nav aria-label="breadcrumb">
                    <div class="breadcrumb">
                       <a href="list.do?sno=${view.sno}&sname=${sname}"> 과제 게시판 &nbsp; </a> > &nbsp;  <span>과제 정보 조회</span>
                    </div>
                </nav>
            </div>

			<!-- 2. 과제 제목 -->
			<div class="mb-4">
				<label class="view_form-section-title">과제 제목</label> 
                <input type="text" class="form-control" value="${ view.title }" readonly>
			</div>

			<!-- 3. 과제 내용 -->
			<div class="mb-4">
				<label class="view_form-section-title">과제 내용</label>
				<div class="view_content-box">${ view.HTML }</div>
			</div>

			<!-- 4. 정보 조회 행 -->
			<div class="row view_info-row">
				<div class="col-md-4">
					<label class="view_form-section-title">구분</label> 
                    <input type="text" class="form-control" value="${ view.ttypeName }" readonly>
				</div>			
				<div class="col-md-4">
					<label class="view_form-section-title">제출 마감일</label> 
                    <input type="text" class="form-control" value="${ view.edate }" readonly>
				</div>
				<div class="col-md-4">
					<label class="view_form-section-title">채점방식</label> 
                    <input type="text" class="form-control" value="${ view.stypeName }" readonly>
				</div>
			</div>
			<br>
            <!-- 첨부 파일 -->
                <label class="form-label">첨부 파일 <span class="sub-text">최대 50MB까지 가능합니다.</span></label>
                <div class="attachment-bar">
                	<div class="file-info">
						<c:if test="${ view.fname != null and !view.fname.equals('') }">
							<span style="font-size:13px; font-weight:bold;" class="file-name">${ view.fname }</span>
							<span style="font-size:12px; color:#aaa;" class="file-size">${ view.fsize }</span>
							<button style="" class="btn-download" onclick="location.href='down.do?ts=1&tno=${ view.tno }'">다운로드</button>
						</c:if>
					</div>
				</div>

			<!-- 6. 버튼 영역 -->
			<!-- 점수확인되면 수정,삭제버튼 사라지게 -->
			<div class="view_button-group">
				<button type="button" class="btn-custom btn-list" onclick="location.href='list.do?sno=${view.sno}&sname=${sname}'">목록</button>
				<jsp:useBean id="now" class="java.util.Date"/>
				<fmt:formatDate value="${ now }" pattern="yyyyMMdd" var="today"/>
				
				<c:if test="${ today <= fn:replace(view.edate, '-', '') }">
					<button type="button" class="btn-custom btn-edit" onclick="location.href='update.do?tno=${view.tno}&sno=${view.sno}&sname=${sname}&edate=${view.edate}'">수정</button>
					<button type="button" class="btn-custom btn-delete" onclick="DoDelete(this);" data-tno="${view.tno}"
																								  data-title="${view.title}"
																								  data-sno="${view.sno}"
																								  data-sname="${sname}"
																								  data-edate="${view.edate}">삭제</button>
				</c:if>
					
			</div>

		</main>
	</div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>