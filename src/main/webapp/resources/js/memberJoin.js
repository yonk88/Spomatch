var emailbool = false;
var joinbool = false;

//아이디 중복체크
$(document).ready(function() {
	$("#emailCheck").click(function() {
		if ($("#mem_Id").val()) {
			var query = {
				mem_Id : $("#mem_Id").val()
			};
			$.ajax({
				url : "/spomatch/member/emailCheck.do",
				type : "post",
				data : query,
				success : function(data) {
					if (data == 1) {
						//console.log("!");
						alert("사용할 수 없는 아이디입니다.")
						$("#mem_Id").val("");
					} else if (data == -1) {
						emailVerify();
						emailbool = true;
						//alert("사용할 수 있는 아이디입니다.");
					}
				}
			});
		} else {
			alert("아이디를 입력하세요.");
			$("#mem_Id").focus();
		}
	});
});
//검증 이메일 전송
function emailVerify() {
	if ($("#mem_Id").val()) {
		var query = {
			mem_Id : $("#mem_Id").val()
		};
		$.ajax({
			url : "/spomatch/member/emailVerify.do",
			type : "post",
			data : query,
			success : function(data) {
				if (data == true) {
					alert("인증메일 전송완료")
				}
			}
		});
	}
}

//	인증번호 검증
$(document).ready(function() {
	$("#joincodeCheck").click(function() {
		if ($("#joincode").val()) {
			var query = {
				joincode : $("#joincode").val()
			};
			$.ajax({
				url : "/spomatch/member/joincodeCheck.do",
				type : "post",
				data : query,
				success : function(data) {
					if (data == false) {
						console.log("!");
						alert("인증코드가 일치하지 않습니다.")
						$("#joincodeCheck").val("");
					} else if (data == true) {
						alert("인증 완료!");
						joinbool = true;
					}
				}
			});
		} else {
			alert("인증번호를 입력하세요.");
			$("#joincodeCheck").focus();
		}
	});
});

//	회원가입
function memberJoinAction() {
	var yy = $("#mem_Birth").val().substr(0, 2); // 년도
	var mm = $("#mem_Birth").val().substr(2, 2); // 월
	var dd = $("#mem_Birth").val().substr(4, 2); // 일
	var gender = $("#mem_Birth").val().substr(6, 1); // 성별

	if (emailbool == false) { // 이메일 인증 확인
		alert("이메일을 인증해주세요.");
		return false;
	}
	if (joinbool == false) { // 인증번호 확인
		alert("인증번호를 확인해주세요.");
		return false;
	}
	if ($("#mem_Pass").val() && $("#mem_Pass2").val()) { //비밀번호 확인
		if ($("#mem_Pass").val() != $("#mem_Pass2").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
	} else {
		alert("비밀번호를 입력해주세요.")
		return false;
	}

	if (!$("#mem_Name").val()) { //이름확인
		alert("이름을 입력해주세요.")
		return false;
	}

	if (!$("#mem_Birth").val()) { //생년월일 입력 확인
		alert("생년월일을 입력해주세요.")
		return false;
	}

	if (!isNumeric($("#mem_Birth").val())) { //생년월일 숫자여부 확인
		alert("주민번호는 숫자로 입력하세요.");
		$("#mem_Birth").val("");
		$("#mem_Birth").focus();
		return false;
	}

	if ($("#mem_Birth").val().length != 7) { //생년월일 길이 확인
		alert("생년월일 형식이 잘못되었습니다.(앞 6자리 + 뒷 1자리)")
		$("#mem_Birth").val("");
		$("#mem_Birth").focus();
		return false;
	}

	if (yy < "00" //생년월일 형식확인
			|| yy > "99" || mm < "01" || mm > "12" || dd < "01" || dd > "31"
			|| gender < "1" || gender > "4") {
		alert("생년월일 형식이 잘못되었습니다.(앞 6자리 + 뒷 1자리)");
		$("#mem_Birth").val("");
		$("#mem_Birth").focus();
		return false;
	}

	if (!$("#mem_Phone").val()) { //전화번호 입력 확인
		alert("핸드폰번호를 입력해주세요.")
		return false;
	}

	if (!isNumeric($("#mem_Phone").val())) { //생년월일 숫자여부 확인
		alert("핸드폰번호는 숫자로 입력하세요.");
		$("#mem_Phone").val("");
		$("#mem_Phone").focus();
		return false;
	}

	if ($("#mem_Phone").val().length != 11) { //전화번호 길이 확인
		alert("핸드폰 번호가 잘못되었습니다.")
		$("#mem_Phone").val("");
		$("#mem_Phone").focus();
		return false;
	}

	if (!$("#mem_Local").val()) { //지역 입력 확인
		alert("지역을 입력해주세요.")
		return false;
	}

	document.joinForm.submit();
	alert("회원가입 완료!");

}

function isNumeric(s) {
	for (i = 0; i < s.length; i++) {
		c = s.substr(i, 1);
		if (c < "0" || c > "9")
			return false;
	}
	return true;
}
