<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이젠대학교 - 신규 과제 등록</title>

<!-- [Bootstrap 5 CSS CDN] -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 구글 폰트 (Noto Sans KR) -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
	rel="stylesheet">
<!-- Font Awesome 아이콘 CDN -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<!-- 커스텀 CSS 통합 파일 -->
<link href="../../css/teacher.css" rel="stylesheet">

</head>
<body>

	<!-- [INCLUDE] 상단 헤더 -->
	<header>
		<div class="logo-section">
			<div class="logo-box">EZ</div>
			<div class="university-name">이젠대학교</div>
		</div>

		<div class="search-bar-container">
			<input type="text" class="search-bar" placeholder="과제제목을 검색하세요...">
			<i class="fa-solid fa-magnifying-glass search-icon"></i>
		</div>

		<div class="user-info">
			<span>[김교수] 님 환영합니다</span>
			<button class="btn-header">회원정보수정</button>
			<button class="btn-header">로그아웃</button>
		</div>
	</header>

	<div class="main-container d-flex">
		<!-- [INCLUDE] 사이드바 -->
		<aside>
			<div class="side-menu-top">
				<a href="notice.jsp" class="menu-item">공지사항</a> 
				<a href="../subject/list.jsp" class="menu-item">과목 관리</a> 
				<a href="list.jsp" class="menu-item active">과제 게시판</a>
			</div>
			<div class="side-menu-bottom">
				<div class="menu-section-title">강의 과목</div>
				<a href="#" class="course-item"><span class="dot"
					style="background-color: #f39c12;"></span> 자바 프로그래밍 입문</a> <a href="#"
					class="course-item"><span class="dot"
					style="background-color: #3498db;"></span> 데이터베이스 설계</a> <a href="#"
					class="course-item"><span class="dot"
					style="background-color: #e84393;"></span> 프론트엔드 웹 개발</a> <a href="#"
					class="course-item"><span class="dot"
					style="background-color: #badc58;"></span> 스프링 부트 프레임워크</a> <a href="#"
					class="course-item"><span class="dot"
					style="background-color: #e74c3c;"></span> 파이썬 데이터 분석</a>
			</div>
		</aside>

		<!-- [CONTENT] 본문 영역 -->
		<main class="write_main">
			<!-- 1. 페이지 헤더 -->
			<div class="write_page-header">
				<h2 class="write_page-title">신규 과제 등록</h2>
				<div class="write_breadcrumb-nav">
					과제 게시판 > <a href="#" class="write_breadcrumb-link">신규 과제 등록</a>
				</div>
			</div>
			<div class="write_divider"></div>

			<form action="view.jsp" method="post" enctype="multipart/form-data">

				<!-- 2. 과제 제목 -->
				<div class="mb-4">
					<label for="taskTitle" class="write_form-section-title">과제
						제목</label> <input type="text" class="form-control" id="taskTitle"
						placeholder="과제 제목을 입력해 주세요.">
				</div>

				<!-- 3. 과제 내용 -->
				<div class="mb-4">
					<label for="taskContent" class="write_form-section-title">과제
						내용</label>
					<textarea class="form-control" id="taskContent" rows="8"
						placeholder="과제에 대한 상세 설명 및 지시사항을 입력해 주세요."></textarea>
				</div>

				<!-- 4. 정보 입력 행 (마감일, 채점방식, 구분) -->
				<div class="row write_info-row">
					<div class="col-md-4">
						<label for="dueDate" class="write_form-section-title">제출
							마감일</label> <input type="date" class="form-control" id="dueDate">
					</div>

					<div class="col-md-4">
						<label for="gradingMethod" class="write_form-section-title">채점방식</label>
						<select class="form-select" id="gradingMethod">
							<option selected>점수제(100점 만점)</option>
							<option value="PF">P/F (패스/논패스)</option>
							<option value="GRADE">등급제 (A-F)</option>
						</select>
					</div>

					<div class="col-md-4">
						<label for="taskType" class="write_form-section-title">구분</label>
						<select class="form-select" id="taskType">
							<option selected>중간과제</option>
							<option value="FINAL">기말과제</option>
							<option value="NORMAL">수시과제</option>
							<option value="TEAM">팀 프로젝트</option>
						</select>
					</div>
				</div>

				<!-- 5. 첨부 파일 -->
				<div class="mb-3">
					<label class="write_form-section-title">첨부 파일</label>
					<div class="write_file-upload-container">
						<div class="write_file-upload-text">파일을 드래그하거나 클릭하여 업로드하세요.</div>
						<input type="file" class="form-control w-auto d-inline-block"
							id="fileInput" multiple>
					</div>
				</div>

				<!-- 6. 버튼 영역 -->
				<div class="write_button-group">
					<button type="submit" class="write_btn-custom write_btn-submit">등록</button>
					<button type="button" class="write_btn-custom write_btn-cancel"
						onclick="history.back()">취소</button>
				</div>

			</form>
		</main>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>