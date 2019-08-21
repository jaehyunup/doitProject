<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>    
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--  <link href="<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>" rel="stylesheet">-->
		<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">-->
  		<!-- CSS Libraries -->
  		<meta id="_csrf" name="_csrf" th:content="${_csrf.token}"/>
		<!-- default header name is X-CSRF-TOKEN -->
		<meta id="_csrf_header" name="_csrf_header" th:content="${_csrf.headerName}"/>
  		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  		
  		<!-- google fonts -->
  		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap" rel="stylesheet">
  		
  		<!-- Template CSS -->
  		<link rel="stylesheet" href="<c:url value="/resources/other/theme/assets/css/components.css"/>">
  		<link rel="stylesheet" href="<c:url value="/resources/other/theme/assets/css/style.css"/>" >
  		<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >
  		
  		
  		
  		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>


<script>
function validate() {
	 var idcheck=new RegExp("[a-zA-Z]{1}[a-zA-Z0-9_]{4,11}$");
    var pwCheck=new RegExp("^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}");
	$("#id").removeAttr("disabled");

 	
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
	     	$("#pw-confirm").val("");
	      	$("#pw").focus();
	      	return false;
	     }
  	 //비밀번호 똑같은지
	      if($("#pw").val() != ($("#pw-confirm").val())){ 
	    	$('#pwck-feedback').text("작성한 비밀번호와 다릅니다!");
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
	   	
	   	console.log("register 유효성 확인");
	   	return true;
}     

</script>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="login-brand">
              <img src="<c:url value="/resources/other/theme/assets/img/stisla-fill.svg"/>" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>Register</h4></div>

              <div class="card-body">
                <form action="register" name="regform" method="POST" class="needs-validation" onsubmit="validate();">
                 <div class="row">
                  <div class="form-group col-6">
                    <label for="id">아이디</label>
                    <input id="id" class="form-control" name="id" required autofocus>
                    <div id="id-feedback" class="invalid-feedback">
                    	아이디를 입력해주세요
                    </div>
                  </div>
                  <div class="form-group col-4">
                    <a id="checkBtn" class="btn btn-primary mt-4 text-white" role="button">중복검사</a>
                  </div>
                 </div>
                 

                   <div class="row">
                    <div class="form-group col-6">
                      <label for="password" class="d-block">비밀번호</label>
                      <input id="pw" type="password" class="form-control pwstrength" data-indicator="pwindicator" name="pw" required>
                      <div id="pw-feedback" class="invalid-feedback">
                  	 	비밀번호를 입력해주세요
                	  </div>
                    </div>
                    <div class="form-group col-6">
                      <label for="pw2" class="d-block">비밀번호 확인</label>
                      <input id="pw-confirm" type="password" class="form-control" name="password-confirm" required>
                      <div id="pwcf-feedback" class="invalid-feedback">
                  	       비밀번호를 한번 더 입력해주세요
                	   </div>
                    </div>
                  </div>
                   
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="agree" class="custom-control-input" id="agree" required>
                      <label class="custom-control-label" for="agree">회원가입에 동의합니다.</label>
                    </div>
                  </div>
				 <div class="form-group">
			  		<input id="csrf" name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
			 	 </div>
                  <div class="form-group">
                    <button type='submit' id="registerbtn" class="btn btn-secondary btn-lg btn-block" disabled="disabled">
                      	닉네임 중복검사가 필요합니다.
                    </button>
                  </div>
                </form>
              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; Doit 2019
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

<script> 

$("#checkBtn").click(function() {
		var userid =$('#id').val();
		var data = {id: userid};
		var token = "${_csrf.token}";
		var header = "${_csrf.headerName}"
		$.ajax({
			type		: "POST",
			url			: "idCheck",
			data		: data,
			dataType: 'json',
			beforeSend	: function (xhr){
				xhr.setRequestHeader(header, token); 
			},
			success	:function(data){
				//alert(data);
				//console.log(data);
				if(data == 1) {
   					$("#id-feedback").text("사용 불가능한 아이디입니다");
   				} else {
    				$("#checkBtn").attr("class","btn mt-4 btn-secondary");
    				$("#checkBtn").attr("disabled","disabled");
    				$("#checkBtn").text("사용가능한 아이디입니다.")
    				$("#registerbtn").removeAttr("disabled");
    				$("#registerbtn").attr("class","btn btn-primary btn-lg btn-block");	
    				$("#id").attr("disabled","disabled");
    				$("#registerbtn").text("가입하기")	;

	   			}
			},
			error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});	
		return;
	});


</script>



	
	<!--바디 끝-->
	
	<!-- General JS Scripts -->
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src= "<c:url value="/resources/other/theme/assets/js/stisla.js"/>"></script>
    
    
    
    
  <!-- Page Specific JS File -->
    <script src="<c:url value="/resources/other/theme/assets/js/page/auth-register.js"/>"></script>
     
  <!-- Template JS File -->
    <script src="<c:url value="/resources/other/theme/assets/js/scripts.js"/>"></script>
    <script src="<c:url value="/resources/other/theme/assets/js/custom.js"/>"></script>
    
    
</body>


</html>
