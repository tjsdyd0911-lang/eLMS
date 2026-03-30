<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/student/head.jsp"%>
    <div class="main-container">
        <aside>
            <div class="side-menu-top">
             	<a href="../notice/list.jsp" class="menu-item">공지사항</a>
                <a href="../apply/apply.jsp" class="menu-item">수강 신청</a>
                <a href="../task/list.jsp" class="menu-item active">과제 관리</a>
            </div>
 <%@ include file="../../include/student/side.jsp"%>           
        </aside>
        
		<main class="view_main">
			   <div class="content-header">
                <h2 class="content-title">과제 조회</h2>
                <nav aria-label="breadcrumb">
                    <div class="breadcrumb">
                       <a href="list.jsp"> 과제관리 &nbsp; </a> > &nbsp;  <span>과제조회</span>
                    </div>
                </nav>
            </div>
			<div class="view_divider"></div>

			<!-- 2. 과제 제목 -->
			<div class="mb-4">
				<label class="view_form-section-title">과제 제목</label> 
                <input type="text" class="form-control" value="개인 웹사이트 테마 선정 및 기획안" readonly>
			</div>

			<!-- 3. 과제 내용 -->
			<div class="mb-4">
				<label class="view_form-section-title">과제 내용</label>
				<div class="view_content-box">
					1. 프로젝트 목적을 명확히 기술할 것<br> 2. 요구사항 명세서를 포함할 것<br> 3. 마감기한을
					엄수할 것.<br> 4. 사용 기술 스택(HTML, CSS, JS 등)을 명시할 것<br> <br>
					<br> • 참고자료는 아래 첨부파일을 확인하여 주시길 바랍니다.
				</div>
			</div>

			<!-- 4. 정보 조회 행 -->
			<div class="row view_info-row">
				<div class="col-md-4">
					<label class="view_form-section-title">구분</label> 
                    <input type="text" class="form-control" value="중간과제" readonly>
				</div>	
				<div class="col-md-4">			
					<label class="view_form-section-title">제출 마감일</label> 
                    <input type="text" class="form-control" value="2026/06/12" readonly>
				</div>
				<div class="col-md-4">
					<label class="view_form-section-title">채점방식</label> 
                    <input type="text" class="form-control" value="점수제(100점 만점)" readonly>
				</div>
			</div>

			<!-- 5. 첨부 파일 -->
			<div class="mb-3">
				<label class="view_form-section-title">첨부 파일</label>
	               <div class="attachment-bar">
	                    <div class="file-info">
	                        <span class="file-name">portfolio.pdf</span>
	                        <span class="file-size">2.4 MB / 제출완료</span>
	                    </div>
	                    <button class="btn-download">다운로드</button>
	                </div>
                
			</div>



                
			<!-- 6. 버튼 영역 -->
			<div class="view_button-group">
				<button type="button" class="view_btn-custom view_btn-list" onclick="location.href='list.jsp'">목록</button>
			</div>

		</main>
	</div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>