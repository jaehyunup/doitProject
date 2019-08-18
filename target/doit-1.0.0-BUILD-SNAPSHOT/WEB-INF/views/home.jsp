<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kakaolove.doit.security.customUserDetails" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

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
		

<%
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    Object principal = auth.getPrincipal();
 
    String name = "";
    if(principal!= null) {
        name = auth.getName();
    }
    
	%>



	<body>
	  <div id="app">
	    <div class="main-wrapper container-fluid">
	      <div class="navbar-bg"></div>
	      <nav class="navbar navbar-expand-lg main-navbar">
	        <a href="index.html" class="navbar-brand sidebar-gone-hide"><strong>DOIT!</strong></a>
	        <div class="navbar-nav">
	          <a href="#" class="nav-link sidebar-gone-show" data-toggle="sidebar"><i class="fas fa-bars"></i></a>
	        </div>
	        <div class="nav-collapse">
	          <a class="sidebar-gone-show nav-collapse-toggle nav-link" href="#">
	            <i class="fas fa-ellipsis-v"></i>
	          </a>
	          <ul class="navbar-nav">
	            <li class="nav-item active"><a href="#" class="nav-link">프로젝트</a></li>
	            <li class="nav-item"><a href="#" class="nav-link">스페이스 클라우드</a></li>
	            <li class="nav-item"><a href="#" class="nav-link">마이페이지</a></li>
	            <li class="nav-item"><a href="#" class="nav-link">내 프로젝트</a></li>
	          </ul>
	        </div>
	        <form class="form-inline ml-auto">
	          <ul class="navbar-nav">
	            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
	          </ul>
	          <div class="search-element">
	            <input class="form-control mr-2 my-1" type="search" placeholder="Search" aria-label="Search" data-width="400">
	            <button class="btn" type="submit"><i class="fas fa-search"></i></button>
	            <div class="search-backdrop"></div>
	            <div class="search-result">
	              <div class="search-header">
	                	히스토리
	              </div>
	              <div class="search-item">
	                <a href="#">나사가 쓰는 css</a>
	                <a href="#" class="search-close"><i class="fas fa-times"></i></a>
	              </div>
	              <div class="search-item">
	                <a href="#">Kodinger.com</a>
	                <a href="#" class="search-close"><i class="fas fa-times"></i></a>
	              </div>
	              <div class="search-item">
	                <a href="#">#Stisla</a>
	                <a href="#" class="search-close"><i class="fas fa-times"></i></a>
	              </div>
	              <div class="search-header">
	                	결과보가ㅣ
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <img class="mr-3 rounded" width="30" src="<c:url value="/resources/images/product-3-50.png"/>" alt="product">
	                  	오 아이폰 9 리미트드에디션
	                </a>
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <img class="mr-3 rounded" width="30" src="<c:url value="/resources/images/product-2-50.png"/>" alt="product">
	                  Drone X2 New Gen-7
	                </a>
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <img class="mr-3 rounded" width="30" src="<c:url value="/resources/images/product-1-50.png"/>" alt="product">
	                  Headphone Blitz
	                </a>
	              </div>
	              <div class="search-header">
	                Projects
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <div class="search-icon bg-danger text-white mr-3">
	                    <i class="fas fa-code"></i>
	                  </div>
	                  Stisla Admin Template
	                </a>
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <div class="search-icon bg-primary text-white mr-3">
	                    <i class="fas fa-laptop"></i>
	                  </div>
	                  Create a new Homepage Design
	                </a>
	              </div>
	            </div>
	          </div>
	        </form>
	        <ul class="navbar-nav navbar-right">
	          <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link nav-link-lg message-toggle beep"><i class="far fa-envelope"></i></a>
	            <div class="dropdown-menu dropdown-list dropdown-menu-right">
	              <div class="dropdown-header">Messages
	                <div class="float-right">
	                  <a href="#">Mark All As Read</a>
	                </div>
	              </div>
	              <div class="dropdown-list-content dropdown-list-message">
	                <a href="#" class="dropdown-item dropdown-item-unread">
	                  <div class="dropdown-item-avatar">
	                    <img alt="image" src="<c:url value="/resources/images/avatar-1.png"/>" class="rounded-circle">
	                    <div class="is-online"></div>
	                  </div>
	                  <div class="dropdown-item-desc">
	                    <b>정영훈</b>
	                    <p>안녕!반가워요</p>
	                    <div class="time">10 Hours Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item dropdown-item-unread">
	                  <div class="dropdown-item-avatar">
	                    <img alt="image" src="<c:url value="/resources/images/avatar-2.png"/>" class="rounded-circle">
	                  </div>
	                  <div class="dropdown-item-desc">
	                    <b>정승제</b>
	                    <p>프로젝트에 참여하고싶은데 연락 가능하신가요?</p>
	                    <div class="time">12 Hours Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item dropdown-item-unread">
	                  <div class="dropdown-item-avatar">
	                    <img alt="image" src="<c:url value="/resources/images/avatar-3.png"/>" class="rounded-circle">
	                    <div class="is-online"></div>
	                  </div>
	                  <div class="dropdown-item-desc">
	                    <b>박찬얼</b>
	                    <p>와 저랑 관심분야가 비슷하시네요! 친하게지내요</p>
	                    <div class="time">12 Hours Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item">
	                  <div class="dropdown-item-avatar">
	                    <img alt="image" src="<c:url value="/resources/images/avatar-4.png"/>" class="rounded-circle">
	                  </div>
	                  <div class="dropdown-item-desc">
	                    <b>Doit</b>
	                    <p>두잇을 사용하신지 1년이 되시는날 입니다, 축하드립니다!</p>
	                    <div class="time">16 Hours Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item">
	                  <div class="dropdown-item-avatar">
	                    <img alt="image" src="<c:url value="/resources/images/avatar-5.png"/>" class="rounded-circle">
	                  </div>
	                  <div class="dropdown-item-desc">
	                    <b>이재용</b>
	                    <p>부산에서 프로젝트 활동 많이 하시나요?</p>
	                    <div class="time">Yesterday</div>
	                  </div>
	                </a>
	              </div>
	              <div class="dropdown-footer text-center">
	                <a href="#">View All <i class="fas fa-chevron-right"></i></a>
	              </div>
	            </div>
	          </li>
	          <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="far fa-bell"></i></a>
	            <div class="dropdown-menu dropdown-list dropdown-menu-right">
	              <div class="dropdown-header">Notifications
	                <div class="float-right">
	                  <a href="#">Mark All As Read</a>
	                </div>
	              </div>
	              <div class="dropdown-list-content dropdown-list-icons">
	                <a href="#" class="dropdown-item dropdown-item-unread">
	                  <div class="dropdown-item-icon bg-primary text-white">
	                    <i class="fas fa-code"></i>
	                  </div>
	                  <div class="dropdown-item-desc">
	                    Template update is available now!
	                    <div class="time text-primary">2 Min Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item">
	                  <div class="dropdown-item-icon bg-info text-white">
	                    <i class="far fa-user"></i>
	                  </div>
	                  <div class="dropdown-item-desc">
	                    <b>You</b> and <b>Dedik Sugiharto</b> are now friends
	                    <div class="time">10 Hours Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item">
	                  <div class="dropdown-item-icon bg-success text-white">
	                    <i class="fas fa-check"></i>
	                  </div>
	                  <div class="dropdown-item-desc">
	                    <b>Kusnaedi</b> has moved task <b>Fix bug header</b> to <b>Done</b>
	                    <div class="time">12 Hours Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item">
	                  <div class="dropdown-item-icon bg-danger text-white">
	                    <i class="fas fa-exclamation-triangle"></i>
	                  </div>
	                  <div class="dropdown-item-desc">
	                    Low disk space. Let's clean it!
	                    <div class="time">17 Hours Ago</div>
	                  </div>
	                </a>
	                <a href="#" class="dropdown-item">
	                  <div class="dropdown-item-icon bg-info text-white">
	                    <i class="fas fa-bell"></i>
	                  </div>
	                  <div class="dropdown-item-desc">
	                    Welcome to Stisla template!
	                    <div class="time">Yesterday</div>
	                  </div>
	                </a>
	              </div>
	              <div class="dropdown-footer text-center">
	                <a href="#">View All <i class="fas fa-chevron-right"></i></a>
	              </div>
	            </div>
	          </li>
	          
	          <!-- 계정정보 -->
	          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
	           <sec:authorize access="isAnonymous()">
                <div class="d-sm-none d-lg-inline-block">두잇에 로그인하세요!</div></a>
			            <div class="dropdown-menu dropdown-menu-right">
			              <div class="dropdown-title">doit, Now!</div>
			              <div class="dropdown-divider"></div>
			              <a href="register" class="dropdown-item has-icon text-danger">
			                <i class="fas fa-sign-out-alt"></i> 회원가입
			              </a>
			              <a href="login" class="dropdown-item has-icon btn-info">
			                <i class="fas fa-sign-in-alt"></i> 로그인
			              </a>
			            </div>
			               
           	   </sec:authorize>
           	   
	           <sec:authorize access="isAuthenticated()">
                <img alt="image" src="<c:url value="/resources/images/avatar-1.png"/>" class="rounded-circle mr-1">
	            <div class="d-sm-none d-lg-inline-block">안녕하세요, <%=name %> 님!</div></a>
	            <div class="dropdown-menu dropdown-menu-right">
	              <div class="dropdown-title">마이메뉴</div>
	              <a href="features-profile.html" class="dropdown-item has-icon">
	                <i class="far fa-user"></i> 내 프로필
	              </a>
	              <a href="features-activities.html" class="dropdown-item has-icon">
	                <i class="fas fa-bolt"></i> 내 프로젝트
	              </a>
	              <a href="features-settings.html" class="dropdown-item has-icon">
	                <i class="fas fa-cog"></i> 계정 설정
	              </a>
	              <div class="dropdown-divider"></div>
	              <a href="javascript:{}" onclick="document.getElementById('logout').submit();" class="dropdown-item has-icon text-danger">
	                <i class="fas fa-sign-out-alt"></i> 로그아웃
	                <form action="logout" id="logout" method="post">
        				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    				</form>
	              </a>
	            </div>
           	   </sec:authorize>
	          </li>
	        </ul>
	      </nav>
	
	
	      <!-- Main Content -->
	      <div class="main-content">
	        <section class="section">
	          <div class="section-header">
	            <h1>두잇에서 핫한 프로젝트!</h1>
	            
	          </div>
	
	          <div class="section-body">
	            <h2 class="section-title"><strong>Hot</strong> 프로젝트</h2>
	            <p class="section-lead">This page is just an example for you to create your own page.</p>
	            <div class="card">
	              <div class="card-header">
	                <h4>Example Card</h4>
	              </div>
	              <div class="card-body">
	                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	              </div>
	              <div class="card-footer bg-whitesmoke">
	                This is card footer
	              </div>
	            </div>
	          </div>
	        </section>
	      </div>
	      <footer class="main-footer">
	        <div class="footer-left">
	          Copyright &copy; 2018 <div class="bullet"></div> Design By <a href="https://nauval.in/">Muhamad Nauval Azhar</a>
	        </div>
	        <div class="footer-right">
	          2.3.0
	        </div>
	      </footer>
	    </div>
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
