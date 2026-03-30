<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/student/head.jsp"%>
    <div class="main-container">
       <aside>
         <div class="side-menu-top">
          	<a href="../notice/list.jsp" class="menu-item">공지사항</a>
             <a href="../apply/apply.jsp" class="menu-item active">수강 신청</a>
             <a href="../task/list.jsp" class="menu-item">과제 관리</a>
         </div>
<%@ include file="../../include/student/side.jsp"%>  
       </aside>

        <main>
            <h2 class="content-title">수강 신청</h2>
			<br>
            <!-- 필터 탭 -->
            <div class="registration-tabs">
                <button class="reg-tab active">전체</button>
                <button class="reg-tab">신청가능</button>
                <button class="reg-tab">지난강의</button>
                <button class="reg-tab">예정강의</button>
            </div>

            <!-- 개설 교과목 목록 섹션 -->
            <div class="section-card">
                <div class="section-header">
                    <h3 class="section-title">개설 교과목 목록</h3>
                </div>
                
                <table class="custom-table">
                    <thead>
                        <tr>
                            <th width="10%">구분</th>
                            <th width="15%">과목명</th>
                            <th width="12%">담당교수</th>
                            <th width="25%">강의기간</th>
                            <th width="15%">신청기간</th>
                            <th width="10%">신청현황</th>
                            <th width="13%">신청</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="status-badge badge-apply">신청가능</span></td>
                            <td>웹디자인 실습</td>
                            <td>홍길동 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><strong>49</strong>/50</td>
                            <td><button class="btn-apply complete" disabled>신청완료</button></td>
                        </tr>
                        <tr>
                            <td><span class="status-badge badge-apply">신청가능</span></td>
                            <td>파이썬 입문</td>
                            <td>김나무 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><strong>50</strong>/50</td>
                            <td><button class="btn-apply complete">정원마감</button></td>
                        </tr>
                        <tr>
                            <td><span class="status-badge badge-apply">신청가능</span></td>
                            <td>자바 프로그래밍</td>
                            <td>정정훈 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><strong>49</strong>/50</td>
                            <td><button class="btn-apply">신청</button></td>
                        </tr>
                        <tr>
                            <td><span class="status-badge badge-past">지난강의</span></td>
                            <td>IT트렌드의 이해</td>
                            <td>홍길동 교수</td>
                            <td class="period-text">25.10.25 ~ 25.12.28</td>
                            <td class="highlight-date">-</td>
                            <td><strong>35</strong>/50</td>
                            <td><button class="btn-apply complete" disabled>마감</button></td>
                        </tr>
                        <tr>
                            <td><span class="status-badge badge-apply">신청가능</span></td>
                            <td>빅데이터 분석의 기초</td>
                            <td>김봉준 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><strong>49</strong>/50</td>
                            <td><button class="btn-apply">신청</button></td>
                        </tr>
                        <tr>
                            <td><span class="status-badge badge-scheduled">예정강의</span></td>
                            <td>데이터베이스</td>
                            <td>전북대 교수</td>
                            <td class="period-text">26.03.25 ~ 26.06.28</td>
                            <td class="highlight-date">26.03.05~26.03.23</td>
                            <td><strong>40</strong>/50</td>
                            <td><button class="btn-apply expected" disabled>예정</button></td>
                        </tr>
                        <tr>
                            <td><span class="status-badge badge-apply">신청가능</span></td>
                            <td>CSS활용 능력</td>
                            <td>김세미 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><strong>49</strong>/50</td>
                            <td><button class="btn-apply">신청</button></td>
                        </tr>
                        <tr>
                            <td><span class="status-badge badge-apply">신청가능</span></td>
                            <td>데이터 분석 프로세스</td>
                            <td>정정훈 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><strong>49</strong>/50</td>
                            <td><button class="btn-apply">신청</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- 내 수강 신청 내역 섹션 -->
            <div class="section-card">
                <div class="section-header">
                    <h3 class="section-title">내 수강 신청 내역</h3>
                    <span class="info-text">총 <span class="count-info">7개</span> 신청</span>
                </div>
                
                <table class="custom-table">
                    <thead>
                        <tr>
                            <th width="8%">번호</th>
                            <th width="18%">과목명</th>
                            <th width="12%">담당교수</th>
                            <th width="25%">강의기간</th>
                            <th width="20%">신청기간</th>
                            <th width="17%">신청</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>7</td>
                            <td>파이썬 입문</td>
                            <td>김나무 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><button class="ubtn-cancel">신청 취소</button></td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>웹디자인 실습</td>
                            <td>홍길동 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><button class="ubtn-cancel">신청 취소</button></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>분석 마스터 플랜</td>
                            <td>성춘향 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><button class="ubtn-cancel">신청 취소</button></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>데이터 분석 전략</td>
                            <td>김봉준 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><button class="ubtn-cancel">신청 취소</button></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>기업 분석 최적화 입문</td>
                            <td>홍길동 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><button class="ubtn-cancel">신청 취소</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>교양 기초 입문</td>
                            <td>김전 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><button class="ubtn-cancel">신청 취소</button></td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>머신러닝 딥러닝 기초</td>
                            <td>이청년 교수</td>
                            <td class="period-text">26.01.25 ~ 26.03.28</td>
                            <td class="highlight-date">26.01.05~26.01.23</td>
                            <td><button class="ubtn-cancel">신청 취소</button></td>
                        </tr>
                 
                    </tbody>
                </table>
            </div>

        </main>
        <!-- [CONTENT] MAIN END -->
    </div>

    <!-- 부트스트랩 JS (필요시 사용) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>