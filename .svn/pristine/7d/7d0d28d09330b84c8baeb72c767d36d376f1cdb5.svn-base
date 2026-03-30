window.onload = function(){
	$("#lid").focus();
	
	$("#btnJoin").click(function(){
		DoJoin();
	});
	
	$("#btnLogin").click(function(){
		DoLogin();
	});	
	
	$("#jid").keyup(function(){
		CheckId();
	});
	
	$("#num").keyup(function(){
		CheckNum();
	});
	
	$("#togglePw").click(function(){
		EyePw();
	});
}

function setinfo(id, pw){
	$("#lid").val(id);
	$("#lpw").val(pw);
}

var uType = "S";  //구분(S-학생, T-교사, A-관리자)
var IsDuplId= false; //true: 중복, false: 중복안됨
var IsDuplNum= false; //true: 중복, false: 중복안됨

function DoJoin(){
	if( IsDuplId == true )
	{
		$("#jid").focus();
		alert("중복된 이메일(ID)입니다.");
		return;
	}
	if( IsDuplNum == true )
	{
		$("#num").focus();
		alert("중복된 학번입니다.");
		return;
	}	
	
	if( emailCheck() == false ) return; //이메일 유효성 검사 함수 호출
	if( numCheck() == false) return; //학번 8자리 검사 함수 호출
	
	if( $("#jid").val() == "" )
	{
		$("#jid").focus();
		alert("이메일을 입력하세요.");
		return;
	}
	if( $("#name").val() == "" )
	{
		$("#name").focus();
		alert("이름을 입력하세요.");
		return;
	}
	if( $("#major").val() == "" )
	{
		$("#major").focus();
		alert("학과를 선택하세요.");
		return;
	}
	if( $("#num").val() == "" )
	{
		$("#num").focus();
		alert("학번을 입력하세요.");
		return;
	}
	
	//비밀번호 검사 함수 
	if( SetPw() == false ) { return false; }
       
	if( $("#hp").val() == "")
	{
		$("#hp").focus();
		alert("핸드폰 번호를 입력하세요.");
		return;
	}
	
	$.ajax({
		url: "joinok.do",
		type: "post",
		dataType: "html",
		data :
		{
			utype : uType,
			uid   : $("#jid").val(),
			name  : $("#name").val(),
			major : $("#major").val(),
			num   : $("#num").val(),
			pw    : $("#jpw").val(),
			hp    : $("#hp").val()
		},
		success : function(data)
		{
			data = data.trim();
			if( data == "OK" )
			{
				alert("회원가입이 완료되었습니다.")
				document.location = "login.do";
			}else
			{
				alert("회원가입이 실패했습니다.");
				$("#jid").focus();
			}
		},
		error : function(xhr,status,error)
		{
			alert("회원가입이 실패했습니다.");
		}
	});

}

function CheckId(){
	IsDuplId = false;
	
	const jid = $("#jid").val();
	
	if(jid == ""){
		$("#imsg").html("이메일(ID)를 입력하세요.");
		return;
	}
	
	if( emailCheck() == false ) return; //이메일 유효성 검사 함수 호출
	
	$.ajax({
		url: "checkid.do?uid=" + jid,
		type: "get",
		dataType: "html",
		success : function(data)
		{
			data = data.trim();
			if(data == "impossible"){
				$("#imsg").html("아이디가 중복되었습니다.");	
				IsDuplId = true;
			}else{
				$("#imsg").html("등록 가능한 아이디입니다.");
			}
		},
		error : function(xhr,status,error)
		{
			alert("실패");
		}
	});
}


function CheckNum(){
	IsDuplNum = false;
	
	num=$("#num").val();
	if( uType == "S" ){
		if( num == ""){
			$("#nmsg").html("학번을 입력하세요.");
			return;
		}
	}else if( uType == "T"){
		if( num == ""){
			$("#nmsg").html("사번을 입력하세요.");
			return;
		}
	}
	
	if( numCheck() == false) return; //학번 8자리 검사 함수 호출
	
	$.ajax({
		url: "checknum.do?num=" + num,
		type: "get",
		dataType: "html",
		success : function(data)
		{
			//통신이 성공적으로 이루어지면  success 가 동작함.
			data = data.trim();
			if(uType == "S" && data == "impossible"){
				$("#nmsg").html("학번이 중복되었습니다.");	
				IsDuplNum = true;
			}else if(uType == "T" && data == "impossible"){
				$("#nmsg").html("사번이 중복되었습니다.");	
			}else{
				$("#nmsg").html("등록 가능합니다.");
			}
		},
		error : function(xhr,status,error)
		{
			//통신 오류 발생시 error가 동작함.
			alert("실패");
		}
	});
}


function DoLogin(){
	if( $("#lid").val() == "" )
	{
		$("#lid").focus();
		alert("이메일을 입력하세요.");
		return;
	}
	if( $("#lpw").val() == "" )
	{
		$("#lpw").focus();
		alert("비밀번호를 입력하세요.");
		return;
	}

	$.ajax({
		url: "loginok.do",
		type: "post",
		dataType: "html",
		data :
		{
			uid : $("#lid").val(),
			pw : $("#lpw").val()
		},
		success : function(data)
		{
			data = data.trim();
			if( data == "WAIT" ){
				alert("승인 완료 후 로그인 가능합니다.");
				return;
			} else if( data == "T" ){
    			document.location = "teacher/subject/list.do";
			} else if( data == "S" ){
			    document.location = "student/apply/apply.do";
			}else if( data == "A"){
				document.location = "admin/notice/list.do";
			}else{
				alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				$("#lid").focus();
			}
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

//학번 최소 글자수(8자리) 검사, 영문숫자 검사 함수
function numCheck() {
	const num = $("#num").val();
	const reg = /^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]+$/; // 영문과 숫자 모두 있는지 체크하는 정규식
	
	if (!reg.test(num) || num.length < 8) {
	  $("#nmsg").html("영문과 숫자 8자리를 입력하세요.");
	  $("#nmsg").css("color","red");
	  $("#num").focus();
	  return false; 
	}
	if (reg.test(num)){ $("#nmsg").hide; }
	
	return true;
}

//이메일 형식 체크를 위한 정규식	
function emailCheck() {
	const email = $("#jid").val().replace(/\s/g,""); //실시간으로 공백 지우는 기능 
	$("#jid").val(email); //공백 지운 값을 그대로 돌려줌
	  
	const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	
	if (!emailRegex.test(email)) {
		$("#imsg").html("올바른 이메일 형식이 아닙니다. (예: example@email.com)");
		$("#jid").focus();
		return false;
	}
	return true;
}
	
//공백 처리하는 함수
function SetBlank(obj)
{
	const value = $(obj).val().replace(/\s/g,"");
	$(obj).val(value);
}

//비밀번호 영문 숫자 특수조합 확인하는 함수
function SetPw()
{
	const pw = $("#jpw").val();
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
    const pwInput = $("#jpw");
    
    if (pwInput.attr("type") === "password") {
        pwInput.attr("type", "text");
        $("#jpw").removeClass("fa-eye").addClass("fa-eye-slash");
    } else {
        pwInput.attr("type", "password");
        $("#jpw").removeClass("fa-eye-slash").addClass("fa-eye");
    }
}

 $(function(){
		$("#lid,#lpw").on("keydown", function(e){
			if(e.keyCode == 13){
				DoSearchTask();
			}
		});
	});
	function DoSearchTask()
	{
		DoLogin();
	}
	
	