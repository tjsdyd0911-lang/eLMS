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

        <main>
            <div class="content-header">
                <h2 class="content-title">과제 관리</h2>
            </div>

            <div class="filter-container">
                <button class="filter-btn active">전체</button>
                <button class="filter-btn">미제출</button>
                <button class="filter-btn">제출완료</button>
                <button class="filter-btn">점수확인</button>
            </div>

            <div class="assignment-card">
                <table class="assignment-table">
                    <thead>
                        <tr>
                            <th width="8%">상태</th>
                            <th width="15%">과목명</th>
                            <th width="32%">과제 제목</th>
                            <th width="15%">첨부파일</th>
                            <th width="12%">마감일</th>
                            <th width="10%">점수</th>
                            <th width="8%">관리</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="status-tag tag-unsubmitted">미제출</span></td>
                            <td class="td-subject">자바 프로그래밍</td>
                            <td class="td-title"><a href="t_view.jsp">클래스와 상속의 이해 실습 과제</a></td>
                            <td><a href="#" class="file-link"><i class="fa-solid fa-paperclip"></i> java_hw1.pdf</a></td>
                            <td>2026-06-10</td>
                            <td class="score-none">-</td>
                            <td><a href="write.jsp"><button class="btn-action btn-blue">과제제출</button></a></td>
                        </tr>
                        <tr>
                            <td><span class="status-tag tag-submitted">제출완료</span></td>
                            <td class="td-subject">데이터베이스</td>
                            <td class="td-title"><a href="#">ER 다이어그램 설계 및 정규화 제출</a></td>
                            <td><a href="#" class="file-link"><i class="fa-solid fa-paperclip"></i> db_schema.zip</a></td>
                            <td>2026-06-08</td>
                            <td class="score-none">-</td>
                            <td><a href="view.jsp"><button class="btn-action btn-gray">보기</button></a></td>
                        </tr>
                        <tr>
                            <td><span class="status-tag tag-graded">점수완료</span></td>
                            <td class="td-subject">웹디자인실습</td>
                            <td class="td-title"><a href="#">개인 포트폴리오 사이트 레이아웃 초안</a></td>
                            <td><a href="#" class="file-link"><i class="fa-solid fa-paperclip"></i> design_v1.fig</a></td>
                            <td>2026-05-20</td>
                            <td class="score-text">95/100</td>
                            <td><a href="view.jsp"><button class="btn-action btn-gray">점수확인</button></a></td>
                        </tr>
                        <tr>
                            <td><span class="status-tag tag-submitted">제출완료</span></td>
                            <td class="td-subject">파이썬입문</td>
                            <td class="td-title"><a href="#">기초 문법 연습문제 풀이</a></td>
                            <td><a href="#" class="file-link"><i class="fa-solid fa-paperclip"></i> py_basic.ipynb</a></td>
                            <td>2026-06-12</td>
                            <td class="score-none">-</td>
                            <td><a href="view.jsp"><button class="btn-action btn-gray">보기</button></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="pagination gap-2">
            	<a href="#" class="page-num">◀</a>
                <a href="#" class="page-num choice">1</a>
                <a href="#" class="page-num">2</a>
                <a href="#" class="page-num">3</a>
                <a href="#" class="page-num">4</a>
                <a href="#" class="page-num">5</a>
                <a href="#" class="page-num">▶</a>
            </div>
        </main>
    </div>
</body>
</html>