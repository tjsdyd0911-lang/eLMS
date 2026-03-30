<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/student/head.jsp"%>
    <div class="main-container">
        <aside>
            <div class="side-menu-top">
             	<a href="../notice/list.do" class="menu-item active">공지사항</a>
                <a href="../apply/apply.do" class="menu-item">수강 신청</a>
                <a href="../task/list.do" class="menu-item">과제 관리</a>
            </div>
 <%@ include file="../../include/student/side.jsp"%>           
        </aside>
        
        <main>
            <div class="content-header">
                <h2 class="view-title">${ notice.title }</h2>
                <nav aria-label="breadcrumb">
                    <div class="breadcrumb">
                        <a href="list.do"> 공지사항 &nbsp; </a> > &nbsp; <span>공지보기</span>
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
                <button type="button" class="btn-list" onclick="document.location='list.do?kind=${ kind }&key=${ key }&page=${ pageno }'">목록으로</button>&nbsp;&nbsp;
            </div>
        </main>
    </div>

</body>
</html>