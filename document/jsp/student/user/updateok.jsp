<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/student/head.jsp"%>
    <div class="main-container">
        <aside>
            <div class="side-menu-top">
             	<a href="../notice/list.jsp" class="menu-item">공지사항</a>
                <a href="../apply/apply.jsp" class="menu-item">수강 신청</a>
                <a href="../task/list.jsp" class="menu-item">과제 관리</a>
            </div>
<%@ include file="../../include/student/side.jsp"%>     
        </aside>

        <main>
            <h2 class="content-title">회원정보 수정</h2>
            <hr class="view-divider" style="margin-bottom:0;">
            
            <div class="content-center-wrapper">
                <div class="edit-card">
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">학번 (ID)</label>
                            <input type="text" class="form-control custom-input" value="251028" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">이름</label>
                            <input type="text" class="form-control custom-input" value="홍길동" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <label class="form-label">이메일 주소</label>
                            <input type="email" class="form-control custom-input" value="example@ezen.ac.kr" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">비밀번호 변경 (선택)</label>
                            <input type="password" class="form-control custom-input editable" placeholder="새 비밀번호">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">&nbsp;</label>
                            <input type="password" class="form-control custom-input editable" placeholder="새 비밀번호 확인">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">휴대폰 번호</label>
                            <input type="text" class="form-control custom-input editable" value="010-1234-5678">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">소속 학과</label>
                            <input type="text" class="form-control custom-input" value="컴퓨터공학과" readonly>
                        </div>
                    </div>
                    <div class="form-footer">
                    	<!-- 정보수정완료시 alert로 변경완료 알림 -->
                        <a href="../notice/list.jsp"><button class="btn-upsubmit">정보 수정 완료</button></a>
                        <a href="../notice/list.jsp"><button class="btn-upcancel">취소</button></a>
                    </div>
                </div>
            </div>
        </main>
    </div>

</body>
</html>