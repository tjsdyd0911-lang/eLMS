<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/teacher/head.jsp" %>
    <div class="main-container">
      <aside>
        <div class="side-menu-top">
         	<a href="../notice/list.jsp" class="menu-item">공지사항</a>
            <a href="../subject/list.jsp" class="menu-item">과목 관리</a>
            <a href="../task/list.jsp" class="menu-item active">과제 게시판</a>
        </div>
<%@ include file="../../include/teacher/side.jsp" %>           
      </aside>

		<main class="edit_main">
			<!-- 1. 페이지 헤더 -->
            <div class="content-header">
                <h2 class="content-title">과제 수정</h2>
                <nav aria-label="breadcrumb">
                    <div class="breadcrumb">
                       <a href="list.jsp"> 과제관리 &nbsp; </a> > &nbsp; <a href="view.jsp"> 과제 정보 조회 &nbsp; </a> > &nbsp;  <span>과제수정</span>
                    </div>
                </nav>
            </div>
			<div class="edit_divider"></div>

			<form action="view.jsp" method="post" enctype="multipart/form-data">

				<!-- 2. 과제 제목 -->
				<div class="mb-4">
					<label for="taskTitle" class="edit_form-section-title">과제
						제목</label> <input type="text" class="form-control" id="taskTitle"
						value="개인 웹사이트 테마 선정 및 기획안">
				</div>

				<!-- 3. 과제 내용 -->
				<div class="mb-4">
					<label for="taskContent" class="edit_form-section-title">과제
						내용</label>
					<textarea class="form-control" id="taskContent" rows="8">기존에 입력된 과제 상세 설명 및 지시사항이 여기에 출력됩니다.</textarea>
				</div>

				<!-- 4. 정보 입력 행 (마감일, 채점방식, 구분) -->
				<div class="row edit_info-row">
					<div class="col-md-4">
						<label for="taskType" class="edit_form-section-title">구분</label> <select
							class="form-select" id="taskType">
							<option selected>중간과제</option>
							<option value="FINAL">기말과제</option>
							<option value="NORMAL">수시과제</option>
							<option value="TEAM">팀 프로젝트</option>
						</select>
					</div>				
					<div class="col-md-4">
						<label for="dueDate" class="edit_form-section-title">제출
							마감일</label> <input type="date" class="form-control" id="dueDate"
							value="2024-06-12">
					</div>

					<div class="col-md-4">
						<label for="gradingMethod" class="edit_form-section-title">채점방식</label>
						<select class="form-select" id="gradingMethod">
							<option selected>점수제(100점 만점)</option>
							<option value="PF">P/F (패스/논패스)</option>
							<option value="GRADE">등급제 (A-F)</option>
						</select>
					</div>
				</div>
				<br>
    	        <!-- 첨부 파일 -->
            <div class="form-group">
                <label class="form-label">첨부 파일 <span class="sub-text">최대 50MB까지 가능합니다.</span></label>
                <input type="file" class="form-control custom-input">
            </div>

			<!-- 6. 버튼 영역 -->
			<div class="view_button-group">
				<button type="button" class="btn-custom btn-edit" onclick="location.href='list.jsp'">수정완료</button>
				<button type="button" class="btn-custom btn-delete" onclick="location.href='list.jsp'">취소</button>	
			</div>

			</form>
		</main>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>