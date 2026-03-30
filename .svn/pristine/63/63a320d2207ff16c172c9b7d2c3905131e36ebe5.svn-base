<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/user/head.jsp" %>
        <main>
            <div class="pw-find-card">
                <h2>비밀번호찾기</h2>
                
                <!-- 학생/교수 선택 캡슐 -->
                <div class="toggle-capsule">
                    <div id="tabStudent" class="type-item" onclick="switchUserType('student')">
                        <span class="dot-radio"></span> 학생
                    </div>
                    <div id="tabProfessor" class="type-item active" onclick="switchUserType('professor')">
                        <span class="dot-radio"></span> 교수
                    </div>
                </div>

                <!-- 폼 시작 -->
                <form>
                    <div class="text-start">
                        <label class="form-label">이메일 주소(ID)</label>
                        <input type="email" class="form-control custom-input" placeholder="example@ezen.ac.kr">
                    </div>
                    
                    <div class="text-start">
                        <label class="form-label" id="idLabel">사번</label>
                        <input type="text" id="idInput" class="form-control custom-input" placeholder="사번 8자리를 입력하세요">
                    </div>

                    <div class="text-start">
                        <label class="form-label">이름</label>
                        <input type="text" class="form-control custom-input" placeholder="실명을 입력하세요">
                    </div>

                    <div class="text-start">
                        <label class="form-label">핸드폰 번호</label>
                        <input type="text" class="form-control custom-input" placeholder="010-0000-0000">
                    </div>
                    
                    <a href="pw_findok.jsp"><button type="button" class="btn btn-reset">비밀번호 재설정</button></a>
                </form>

                <a href="login.jsp" class="footer-link">로그인하러 가기</a>
            </div>
        </main>
    </div>

    <!-- 부트스트랩 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // 학생 vs 교수 전환 함수
        function switchUserType(type) {
            const idLabel = document.getElementById('idLabel');
            const idInput = document.getElementById('idInput');
            const tabStudent = document.getElementById('tabStudent');
            const tabProfessor = document.getElementById('tabProfessor');

            if (type === 'student') {
                // 학생 선택 시 UI 변경
                idLabel.innerText = '학번';
                idInput.placeholder = '학번 8자리를 입력하세요';
                tabStudent.classList.add('active');
                tabProfessor.classList.remove('active');
            } else {
                // 교수 선택 시 UI 변경
                idLabel.innerText = '사번';
                idInput.placeholder = '사번 8자리를 입력하세요';
                tabProfessor.classList.add('active');
                tabStudent.classList.remove('active');
            }
        }
    </script>
</body>
</html>