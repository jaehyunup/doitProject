<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>    
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--  <link href="<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>" rel="stylesheet">-->
		<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">-->
  		<!-- CSS Libraries -->
  		
  		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  		
  		<!-- google fonts -->
  		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap" rel="stylesheet">
  		
  		<!-- Template CSS -->
  		<link rel="stylesheet" href="<c:url value="/resources/other/theme/assets/css/components.css"/>">
  		<link rel="stylesheet" href="<c:url value="/resources/other/theme/assets/css/style.css"/>" >
  		<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" >
  		
  		
  		
  		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  		<script type="text/javascript" src="<c:url value="/resources/js/validate.js"/>"></script>
</head>





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
                <form method="POST" action="/register" class="needs-validation" novalidate="" onsubmit="return validate()">
                 <div class="row">
                  <div class="form-group col-6">
                    <label for="id">아이디</label>
                    <input id="id" class="form-control" name="id" required autofocus>
                    <div id="id-feedback" class="invalid-feedback">
                    	아이디를 입력해주세요
                    </div>
                  </div>
                  <div class="form-group col-4">
                    <a class="btn btn-primary mt-4" href="#" role="button">중복검사</a>
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
			  		<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
			 	 </div>
                  <div class="form-group">
                    <button type='submit' id="registerbtn" class="btn btn-primary btn-lg btn-block">
                      	생성하기
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
