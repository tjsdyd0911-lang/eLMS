<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/admin/head.jsp" %>
  <div class="main-container">
        <aside>
            <div class="side-menu-top">
                <a href="../notice/list.jsp" class="menu-item active">공지사항</a>
                <a href="../teacher/list.jsp" class="menu-item">교사 관리</a>
                <a href="../student/list.jsp" class="menu-item">학생 관리</a>
            </div>
        </aside>
		<!-- 본문 내용 -->
		<main class="content-area">
			<!-- 페이지 헤더 -->
			<div class="page-header">
				<h2 class="page-title">공지사항 수정</h2>
				<nav aria-label="breadcrumb">
				<div class="breadcrumb">
					<a href="list.jsp"> 공지사항 &nbsp; </a> > &nbsp; <a href="view.jsp"> 공지사항 보기 &nbsp; </a> > &nbsp; <span>공지사항 수정</span>
				</div>
				</nav>
			</div>

			<!-- 공지사항 수정 폼 -->
			<form action="#" method="post">

				<!-- 제목 -->
				<label class="form-label">제목</label> <input type="text"
					class="form-control-custom" name="title"
					value="2026년도 1학기 국가장학금 신청 기간 및 방법 안내">

				<!-- 내용 -->
				<label class="form-label">내용</label>
				<textarea class="form-control-custom" name="content"
					style="height: 320px;">
안녕하세요. 이젠대학교 운영팀입니다.

2026년도 1학기 국가장학금 신청과 관련하여 다음과 같이 안내드리오니 일정에 맞춰 신청하시기 바랍니다.

1. 신청 대상: 재학생, 신입생, 편입생, 재입학생, 복학생
2. 신청 기간: 2024년 5월 20일 ~ 6월 15일
3. 신청 방법: 한국장학재단 홈페이지 및 모바일 앱을 통한 온라인 신청
4. 서류 제출 및 가구원 동의: 2024년 6월 20일 18시까지

장학금 혜택을 놓치지 않도록 기한 내 반드시 신청을 완료해 주시기 바랍니다.
기타 문의사항은 학생 복지과로 연락 바랍니다.

감사합니다.</textarea>

				<!-- 구분선 (이미지와 동일하게 추가) -->
				<hr style="border-top: 1px solid #dee2e6; margin: 10px 0;">
				<!-- 첨부파일 -->
				<label class="form-label">첨부파일</label>
				<div class="file-upload-box">
					<i class="fa-solid fa-paperclip file-icon"></i>
					<div>
						<input type="file" id="fileInput" name="file">
					</div>
				</div>

				<!-- 버튼 영역 (이미지상 우측 정렬) -->
				<div class="text-end">
					<a href="view.jsp"><button type="button"
							class="btn-custom btn-blue">수정 완료</button></a> <a href="view.jsp"><button
							type="button" class="btn-custom btn-grey"
							onclick="history.back()">취소</button></a>
				</div>
			</form>
		</main>
	</div>

	<!-- 부트스트랩 JS (필요시) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>