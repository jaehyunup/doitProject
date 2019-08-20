function profilevalidate() {
	  var nickcheck=new RegExp("^[가-힣a-zA-Z]{2,12}$");

		if($('#nickname').val()==""){// 공백 검사
			$("#nickname").val("");
			$('#nickname-feedback').text("아이디를 입력해주세요");
			$('#nickname').focus();
			
			return false;
		}
		
		// 아이디 정규표현식 검사      		
	    if(!nickcheck.test($("#nickname").val())) {
	    	$('#nickname-feedback').text("영어,한글로 이루어진 2~12자리의 닉네임");
	     	$("#nickname").val("");
	      	$("#nickname").focus();
	      	return false;}
			   	
	   	return true;
}     
         		