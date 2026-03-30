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
<script>
function InfoUpdate() {
	if( $("#hp").val() == "" ){
		alert("핸드폰번호를 입력하세요.");
		$("#hp").focus();
		return;
	}
	
	if( $("#pw").val() == "" ){
		alert("비밀번호를 입력하세요.");
		$("#pw").focus();
		return;
	}
	
	if( $("#pw").val() != $("#pwcheck").val() ){
		alert("비밀번호가 일치하지 않습니다.");
		$("#pw").focus();
		return;
	}
	
	$.ajax({
		url: "infoupdate.do",
		type: "post",
		dataType: "html",
		data :
		{
			id : "${ login.uid }",
			pw : $("#pw").val(),
			hp : $("#hp").val()
		},
		success : function(data)
		{
			data = data.trim();
			alert("회원정보가 수정되었습니다.");
			document.location = "../subject/list.do";
		},
		error : function(xhr,status,error)
		{
			alert("실패");
		}
	});
}

//핸드폰 번호 하이픈 자동 생성 정규식 
const autoHyphen = (target) => {
	  target.value = target.value
	    .replace(/[^0-9]/g, '') // 숫자가 아닌 문자 제거
	    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`) // 10~11자리 포맷팅
	    .replace(/(\-{1,2})$/g, ""); // 마지막에 남는 하이픈 제거
}

//비밀번호 영문 숫자 특수조합 확인하는 함수
function SetPw()
{
	const pw = $("#pw").val();
	const pwcheck = $("#pwcheck").val();
	
    const pwRegex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{8,16}$/;

    if ( !pwRegex.test(pw) ) {
        $("#pmsg").html("비밀번호는 영문, 숫자, 특수문자를 포함하여 8~16자로 설정해주세요.");
		$("#pmsg").css("color","red");	
        $("#pw").focus();
        return false;
    }
    if( pwRegex.test(pw) && pw != "" ) { $("#pmsg").hide(); }
    
    if( pwcheck != "" && pwcheck != pw ) { 
	    $("#pmsg").show().css("color","red"); 
	    $("#pmsg").html("비밀번호가 일치하지 않습니다.");  
	    return false; 
	} else { $("#pmsg").hide(); return true; }
}

function EyePw() {
    const pwInput = $("#pw");
    
    if (pwInput.attr("type") === "password") {
        pwInput.attr("type", "text");
        $("#pw").removeClass("fa-eye").addClass("fa-eye-slash");
    } else {
        pwInput.attr("type", "password");
        $("#pw").removeClass("fa-eye-slash").addClass("fa-eye");
    }
}
</script>     
        <main>
            <h2 class="content-title">회원정보 수정</h2>
            <hr class="view-divider" style="margin-bottom:0;">
            
            <div class="content-center-wrapper">
                <div class="edit-card">
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">사번</label>
                            <input type="text" class="form-control custom-input" value="${ num }" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">이름</label>
                            <input type="text" class="form-control custom-input" value="${ name }" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">이메일(ID)</label>
                            <input type="email" class="form-control custom-input" value="${ id }" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">휴대폰 번호</label>
                            <input type="tel" id="hp" name="hp" maxlength="13" oninput="autoHyphen(this)" class="form-control custom-input editable" placeholder="${ hp }">
                        </div>
                    </div>
                   <div class="row">
                        <div class="col-md-6">
                            <label class="form-label">비밀번호 변경</label> 
                           <!-- 아이콘 배치를 위해 input을 감싸는 div 추가 -->
						    <div class="position-relative">
						        <input type="password" minlength="8" maxlength="16" class="form-control custom-input editable" 
						               id="pw" name="pw" placeholder="8자 이상 16자 이하의 비밀번호" onkeyup="SetPw();">
						        <i id="togglePw" class="fa fa-eye position-absolute top-50 end-0 translate-middle-y me-3" 
						           style="cursor: pointer; z-index: 10;" onclick="EyePw();"></i>
						    </div>
						    <span id="pmsg"></span>
						</div>
                        <div class="col-md-6">
                            <label class="form-label">&nbsp;</label>
                            <input type="password" id="pwcheck" name="pwcheck" minlength="8" maxlength="16" class="form-control custom-input editable" placeholder="새 비밀번호 확인" onkeyup="SetPw();">
                        </div>
                    </div>
                    <div class="form-footer">
                    	<!-- 정보수정완료시 alert로 변경완료 알림 -->
                        <button class="btn-upsubmit" onclick="InfoUpdate();">정보 수정 완료</button>
                        <a href="../subject/list.do"><button class="btn-upcancel">취소</button></a>
                    </div>
                </div>
            </div>
        </main>
    </div>

</body>
</html>