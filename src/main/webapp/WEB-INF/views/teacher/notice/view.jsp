<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/teacher/head.jsp" %>
    <div class="main-container">
      <aside>
        <div class="side-menu-top">
         	<a href="../notice/list.do" class="menu-item active">공지사항</a>
            <a href="../subject/list.do" class="menu-item">과목 관리</a>
            <a href="../task/list.do" class="menu-item">과제 게시판</a>
        </div>
<%@ include file="../../include/teacher/side.jsp" %>           
      </aside>

        <main>
            <div class="content-header">
                <h2 class="view-title">${ notice.title }</h2>
                <nav aria-label="breadcrumb">
                    <div class="breadcrumb">
                        <a href="list.do">공지사항</a> &nbsp; > &nbsp; <span>공지보기</span>
                    </div>
                </nav>
            </div>

            <div class="view-meta">
                <span><b>번호</b> ${ notice.nno }</span>
                <span><b>작성일</b> ${ notice.wdate }</span>
                <span><b>작성자</b> 관리자</span>
            </div>
            
            <hr class="view-divider">

            <div class="view-content">
                 ${ notice.HTML }
            </div>
			<div class="attachment-bar">
	            <c:choose>
					<c:when test="${ notice.fname != null and !notice.fname.equals('') }">
						${ notice.fname }
						<a href="down.do?no=${ notice.nno }"><button class="btn-download">다운로드</button></a>
					</c:when>
					<c:otherwise>
						등록된 첨부파일이 없습니다.
					</c:otherwise>
				</c:choose>
            </div>
            <div class="view-footer">
                <button type="button" class="btn-list" onclick="location.href='list.do'">목록으로</button>&nbsp;&nbsp;
            </div>
        </main>
    </div>

</body>
</html>