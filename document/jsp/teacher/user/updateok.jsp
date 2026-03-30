<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/teacher/head.jsp" %>
    <div class="main-container">
      <aside>
        <div class="side-menu-top">
         	<a href="../notice/list.jsp" class="menu-item active">공지사항</a>
            <a href="../subject/list.jsp" class="menu-item">과목 관리</a>
            <a href="../task/list.jsp" class="menu-item">과제 게시판</a>
        </div>
<%@ include file="../../include/teacher/side.jsp" %>           
      </aside>
      
        <main>
            <h2 class="content-title">회원정보 수정</h2>
            <hr class="view-divider" style="margin-bottom:0;">
            
            <div class="content-center-wrapper">
                <div class="edit-card">
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">사번</label>
                            <input type="text" class="form-control custom-input" value="251028" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">이름</label>
                            <input type="text" class="form-control custom-input" value="홍길동" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">이메일(ID)</label>
                            <input type="email" class="form-control custom-input" value="example@ezen.ac.kr" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">휴대폰 번호</label>
                            <input type="text" class="form-control custom-input editable" value="010-1234-5678">
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