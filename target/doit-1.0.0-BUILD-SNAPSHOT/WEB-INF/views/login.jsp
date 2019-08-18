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
  		
</head>

<body onload="document.f.username.focus();">
  <div id="app">
    <section class="section">
      <div class="d-flex flex-wrap align-items-stretch">
        <div class="col-lg-4 col-md-6 col-12 order-lg-1 min-vh-100 order-2 bg-white">
          <div class="p-4 m-3">
          
            <img src="<c:url value="/resources/other/theme/assets/img/stisla-fill.svg"/>" alt="logo" width="80" class="shadow-light rounded-circle mb-5 mt-2">
            <h4 class="text-dark font-weight-normal">환영합니다<span class="font-weight-bold">Doit!</span></h4>
            <p class="text-muted">두잇에서 당신의 꿈을 향한 여정을 함께할 동료를 모집하세요!</p>
            <form method="POST" action="<c:url value="/login"/>" class="needs-validation" novalidate="">
              <div class="form-group">
                <label for="doitid">두잇 아이디</label>
                <input id="id" class="form-control" name="id" tabindex="1" required autofocus>
                <div class="invalid-feedback">
                  	아이디를 입력해주세요
                </div>
              </div>

              <div class="form-group">
                <div class="d-block">
                  <label for="password" class="control-label">비밀번호</label>
                </div>
                <input id="password" type="password" class="form-control" name="pw" tabindex="2" required>
                <div class="invalid-feedback">
					비밀번호를 입력해주세요
                </div>
              </div>
              <div class="form-group">
			  	<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
			  </div>
              <div class="form-group">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember">
                  <label class="custom-control-label" for="remember-me">아이디 기억하기</label>
                </div>
              </div>

              <div class="form-group text-right">
                <a href="auth-forgot-password.html" class="float-left mt-3">
                  	비밀번호를 잊으셨나요?
                </a>
                <button type="submit" class="btn btn-primary btn-lg btn-icon icon-right" tabindex="4">
                  	로그인
                </button>
              </div>

              <div class="mt-5 text-center">
				아이디가 없으신가요? <a href="#">두잇 가입하기</a>
              </div>
            </form>

            <div class="text-center mt-5 text-small">
              Copyright &copy; by Doit
              <div class="mt-2">
                <a href="#">개인보호 보호정책</a>
                <div class="bullet"></div>
                <a href="#">고객센터</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-8 col-12 order-lg-2 order-1 min-vh-100 background-walk-y position-relative overlay-gradient-bottom" data-background="<c:url value="/resources/other/theme/assets/img/unsplash/login-bg.jpg"/>">
          <div class="absolute-bottom-left index-2">
            <div class="text-light p-5 pb-2">
              <div class="mb-5 pb-3">
                <h1 class="mb-2 display-4 font-weight-bold">Good Mornig</h1>
                <h5 class="font-weight-normal text-muted-transparent">Bali, Indonesia</h5>
              </div>
              Photo by 
              <a class="text-light bb" target="_blank" href="https://unsplash.com/photos/a8lTjWJJgLA">Justin Kauffman
              </a> on <a class="text-light bb" target="_blank" href="https://unsplash.com">Unsplash
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

	
	<!--바디 끝-->
	
	<!-- General JS Scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
	
    <!-- <script src="<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>"></script> -->
    
    <!-- Page Specific JS File -->
    <script src= "<c:url value="/resources/other/theme/assets/js/stisla.js"/>"></script>
    <!-- Template JS File -->
    <script src="<c:url value="/resources/other/theme/assets/js/scripts.js"/>"></script>
    <script src="<c:url value="/resources/other/theme/assets/js/custom.js"/>"></script>
	</body>


</html>
