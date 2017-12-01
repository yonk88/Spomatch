
//아이디 존재하는지 여부 확인
$(document).ready(function() {
	$("#idCheckBtn").click(function() {
		if ($("#rep_Widx").val()) {
			var query = {
				mem_Id : $("#rep_Widx").val()
			};
			$.ajax({
				url : "/spomatch/member/emailCheck.do",
				type : "post",
				data : query,
				success : function(data) {
					if (data == 1) {
						//console.log("!");
						alert("존재하는 아이디입니다")
					} else if (data == -1) {
						alert("존재하지 않는 아이디입니다.")
						$("#rep_Widx").val("");
					}
				}
			});
		} else {
			alert("아이디를 입력하세요.");
			$("#rep_Widx").focus();
		}
	});
	
	var memLev = $('#adminCheck').attr('title');
	if(memLev == '0'){
		$('#adminCheck').attr('style','display: block');
	}
	

    $("a[name='title']").on("click", function(){ //신고내용 클릭
    	if(memLev == '0'){

    		fn_openBoardDetail($(this));
    	}
    });
    
    
    $(function() {
        var action;
        $(".number-spinner button").mousedown(function () {
            btn = $(this);
            input = btn.closest('.number-spinner').find('input');
            btn.closest('.number-spinner').find('button').prop("disabled", false);

        	if (btn.attr('data-dir') == 'up') {
                action = setInterval(function(){
                    if ( input.attr('max') == undefined || parseInt(input.val()) < parseInt(input.attr('max')) ) {
                        input.val(parseInt(input.val())+1);
                    }else{
                        btn.prop("disabled", true);
                        clearInterval(action);
                    }
                }, 50);
        	} else {
                action = setInterval(function(){
                    if ( input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min')) ) {
                        input.val(parseInt(input.val())-1);
                    }else{
                        btn.prop("disabled", true);
                        clearInterval(action);
                    }
                }, 50);
        	}
        }).mouseup(function(){
            clearInterval(action);
        });
    });
});



function fn_openBoardDetail(obj){
	var str1 = "#repDetailModal";
	var str2 = obj.parent().find("#IDX").val();
	var dataT = str1.concat(str2);
	$("#repDetailBtn").attr('data-target', dataT);
	$("#repDetailBtn").click();
}



//	신고접수
function newReportAction() {
	if (!$("#rep_Content").val()) { //신고내용 확인
		alert("신고내용을 입력해주세요")
		return false;
	}

	if (!$("#rep_Type").val()) { //신고유형 확인
		alert("신고유형을 입력해주세요")
		return false;
	}
	if (!$("#rep_Widx").val()) { //아이디 확인
		alert("신고대상을 입력해주세요")
		return false;
	}
	document.reportForm.submit();
	alert("신고접수 완료!");
}

function isNumeric(s) {
	for (i = 0; i < s.length; i++) {
		c = s.substr(i, 1);
		if (c < "0" || c > "9")
			return false;
	}
	return true;
}
//계정정지 먹이기
function suspendAction(formId) {
	alert("계정정지 시작");


	var formN = formId.value;
	$("#"+formId.id).submit();
	
}

function isNumeric(s) {
	for (i = 0; i < s.length; i++) {
		c = s.substr(i, 1);
		if (c < "0" || c > "9")
			return false;
	}
	return true;
}
