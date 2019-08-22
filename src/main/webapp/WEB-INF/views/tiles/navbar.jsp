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
	<nav class="navbar navbar-expand-lg main-navbar">
	        <div class="navbar-nav">
	          <a href="#" class="nav-link sidebar-gone-show" data-toggle="sidebar"><i class="fas fa-bars"></i></a>
	        </div>
	        <div class="nav-collapse">
	          <a class="sidebar-gone-show nav-collapse-toggle nav-link" href="#">
	            <i class="fas fa-ellipsis-v"></i>
	          </a>
	          <ul class="navbar-nav">
	            <li class="nav-item active"><a href="project" class="nav-link">프로젝트</a></li>
	            <li class="nav-item"><a href="place" class="nav-link">스페이스 클라우드</a></li>
	            <li class="nav-item"><a href="myprofile" class="nav-link">마이페이지</a></li>
	            <li class="nav-item"><a href="myproject" class="nav-link">내 프로젝트</a></li>
	          </ul>
	        </div>
	        <form class="form-inline ml-auto">
	          <ul class="navbar-nav">
	            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
	          </ul>
	          <div class="search-element">
	            <input class="form-control mr-2 my-1" type="search" placeholder="Search" aria-label="Search" data-width="140">
	            <button class="btn" type="submit"><i class="fas fa-search"></i></button>
	            <div class="search-backdrop"></div>
	            <div class="search-result">
	              <div class="search-header">
	                	프로젝트 검색
	              </div>
	              <div class="search-item">
	                <a href="#">#인기있는 프로젝트</a>
	                <a href="#" class="search-close"><i class="fas fa-times"></i></a>
	              </div>
	              <div class="search-item">
	                <a href="#">#IT/프로그래밍</a>
	                <a href="#" class="search-close"><i class="fas fa-times"></i></a>
	              </div>
	              <div class="search-item">
	                <a href="#">#디자인/영상</a>
	                <a href="#" class="search-close"><i class="fas fa-times"></i></a>
	              </div>
	              <div class="search-header">
	                	최근에 구경한 프로젝트
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <img class="mr-3 rounded" width="30" src="<c:url value="/resources/images/product-3-50.png"/>" alt="product">
	                  	어플리케이션 개발팀원을 구합니다
	                </a>
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <img class="mr-3 rounded" width="30" src="<c:url value="/resources/images/product-2-50.png"/>" alt="product">
	                    	서울시 드론공모전 팀원 구해요!
	                </a>
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <img class="mr-3 rounded" width="30" src="<c:url value="/resources/images/product-1-50.png"/>" alt="product">
	                  	헤드셋 디자인 공모전 참가하실 팀원을 모집중입니다
	                </a>
	              </div>
	              <div class="search-header">
	                	최근 구경한 공모전/행사
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <div class="search-icon bg-danger text-white mr-3">
	                    <i class="fas fa-code"></i>
	                  </div>소개딩 - S/W개발보안 대회
	                </a>
	              </div>
	              <div class="search-item">
	                <a href="#">
	                  <div class="search-icon bg-primary text-white mr-3">
	                    <i class="fas fa-laptop"></i>
	                  </div>
	                  	KaKao Code Festival Summer 2019
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
	              <a href="myprofile" class="dropdown-item has-icon">
	                <i class="far fa-user"></i> 내 프로필
	              </a>
	              <a href="myproject" class="dropdown-item has-icon">
	                <i class="fas fa-bolt"></i> 내 프로젝트
	              </a>
	              <a href="myaccount" class="dropdown-item has-icon">
	                <i class="fas fa-cog"></i> 계정 설정
	              </a>
	              <div class="dropdown-divider"></div>
	              <a id="regbtn" href="" onclick="document.getElementById('logout').submit()" class="dropdown-item has-icon text-danger">
	                <i class="fas fa-sign-out-alt"></i> 로그아웃
	                <form action="logout" id="logout" method="POST">
        				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    				</form>
	              </a>
	            </div>
           	   </sec:authorize>
	          </li>
	        </ul>
	      </nav>
	
	</body>
</html>