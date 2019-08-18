function validate() {
	var idcheck=new RegExp("[a-zA-Z]{1}[a-zA-Z0-9_]{4,11}$");
      var pwCheck=new RegExp("^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}");

  	
		if($('#id').val()==""){// 공백 검사
			$("#id").val("");
			$('#id-feedback').text("아이디를 입력해주세요");
			$('#id').focus();
			
			return false;
		}
		
		// 아이디 정규표현식 검사      		
	    if(!idcheck.test($("#id").val())) {
	    	$('#id-feedback').text("첫글자는 영문, 특수문자는 '_' 만 허용 (5~12자)");
	     	$("#id").val("");
	      	$("#id").focus();
	      	return false;}
		
		//10~20자리 영문,숫자,특수문자를 포함하는 정규표현식
	    if(!pwCheck.test($("#pw").val())) {
	    	$('#pw-feedback').text("6-16자리 영문,숫자,특수문자 조합");
	     	$("#pw").val("");
	      	$("#pw").focus();
	      	return false;
	     }
   	 //비밀번호 똑같은지
 	      if($("#pw").val() != ($("#pw-confirm").val())){ 
 	    	$('#pwck-feedback').text("앞의 비밀번호와 다릅니다!");
 	      	$("#pw-confirm").val("");
 	      	$("#pw-confirm").focus();
 	      return false;
 	     }         	 	
		
		//아이디 비밀번호 동일한지
	   	if ($("#id").val()==($("#pw").val())) {
	   		$('#pw-feedback').text("아이디와 비밀번호가 동일합니다");
 	        $("#pw").val("");
	        $("#pw").focus();
	        return false;
	    }
	   	
	   	return true;
}     
         		