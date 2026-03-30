<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/admin/head.jsp" %>
<script>
window.onload = function()
{
	$("#title").focus();
	$("#btnSbm").click(function(){
		DoSubmit();
	});
}

function DoSubmit()
{
	if($("#title").val() == "")
	{
		alert("제목을 입력하세요.");
		$("#title").focus();
		return;
	}
	if($("#content").val() == "")
	{
		alert("내용을 입력하세요.");
		$("#content").focus();
		return;
	}
	if(confirm("게시물을 저장하시겠습니까?") == true)
	{
		$("#frm").submit();
	}
	
}
</script>
  <div class="main-container">
        <aside>
            <div class="side-menu-top">
                <a href="../notice/list.do" class="menu-item active">공지사항</a>
                <a href="../teacher/list.do" class="menu-item">교수 관리</a>
                <a href="../student/list.do" class="menu-item">학생 관리</a>
            </div>
        </aside>
		<!-- 본문 내용 -->
		<main class="content-area">
			<!-- 헤더 영역 -->
			<div class="page-header">
				<h2 class="page-title">새 공지사항 작성</h2>
                <nav aria-label="breadcrumb">
                    <div class="breadcrumb">
                       <a href="list.do"> 공지사항 &nbsp; </a> > &nbsp;  <span>국가장학금 공지</span>
                    </div>
                </nav>
			</div>

			<!-- 작성 폼 -->
			<form id="frm" name="frm" action="writeok.do" method="post" enctype="multipart/form-data">

				<!-- 제목 -->
				<label class="form-label">제목</label> <input id="title" name="title" type="text"
					class="form-control-custom" placeholder="">

				<!-- 내용 -->
				<label class="form-label">내용</label>
				<textarea id="content" name="content" class="form-control-custom"></textarea>

				<!-- 첨부파일 -->
				<label class="form-label">첨부파일</label>
				<div class="file-upload-box">
					<i class="fa-solid fa-paperclip file-icon"></i>
					<div>
						<input type="file" id="fileInput" name="attach">
					</div>
				</div>

				<!-- 버튼 영역 -->
				<div class="btn-area">
					<button type="button" id="btnSbm" class="btn-custom btn-blue">등록</button></a>
					<button type="button" id="btnCnl" class="btn-custom btn-grey"
						onclick="history.back()">취소</button>
				</div>

			</form>
		</main>

	</div>

	<!-- 부트스트랩 JS (필요시) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>