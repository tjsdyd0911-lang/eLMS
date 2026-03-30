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
<form id="frmMatch" name="frmMatch" method="post" action="updateok.do">
<input type="hidden" id="idMatch" name="uid">
</form>
<script>
function PwMatch() {
	if( $("#pw").val() == "" ){
		alert("비밀번호를 입력하세요.");
		$("#pw").focus();
		return;
	}
	
	$.ajax({
		url: "pwmatch.do",
		type: "post",
		dataType: "html",
		data :
		{
			id : "${ login.uid }",
			pw : $("#pw").val()
		},
		success : function(data)
		{
			data = data.trim();
			if( data == "O" )
			{
				$("#idMatch").val("${ login.uid }");
				$("#frmMatch").submit();
			}else
			{
				alert("비밀번호가 일치하지 않습니다.");
				$("#pw").focus();
			}
		},
		error : function(xhr,status,error)
		{
			alert("실패");
		}
	});
}
</script>

        <main>
            <h2 class="content-title">회원정보 수정</h2>
            <hr class="view-divider" style="margin-bottom:0;">
            
            <div class="content-center-wrapper">
                <div class="verify-card">
                    <h3>본인 확인 안내</h3>
                    <p>안전한 정보 수정을 위해 현재 비밀번호를 입력해주세요.</p>
                    <div class="text-start">
                        <label class="form-label">현재 비밀번호</label>
                        <input type="password" id="pw" name="pw" class="form-control custom-input" placeholder="비밀번호 입력">
                    </div>
                    <button class="btn-verify" onclick="PwMatch();">확인</button>
                </div>
            </div>
        </main>
    </div>

</body>
</html>