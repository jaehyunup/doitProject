<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kakaolove.doit.security.customUserDetails" %>
<%@ page import="com.kakaolove.doit.vo.userProfileVO" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>





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


<%!
    public List<String> splitunderbar(String str) {
		List<String> list = Arrays.asList(str.split("_"));
        return list;
    };

	public boolean iscontainub(String str){
		return str.contains("_");
		//있으면 true
	}
	
	public List<String> splitcontext(String str){
		List<String> retlist=new ArrayList<String>();
		if(iscontainub(str)){ // 한개일때
			retlist.add(str);
			return retlist;
		}
		return splitunderbar(str);
	}
%>



<body>
  <div id="app">
	    <div class="main-wrapper">
	      <div class="navbar-bg"></div>
	      <!-- 네비바 -->
		  <%@include file='../tiles/navbar.jsp'%>
	 		<!-- 사이드바시작 -->
		   <div class="main-sidebar d-none d-sm-block">
	        <aside id="sidebar-wrapper">
	          <div class="sidebar-brand">
	            <a href="index.html">당신의 실력을 보여주세요,do it</a>
	          </div>
	          <div class="sidebar-brand sidebar-brand-sm">
	            <a href="index.html">St</a>
	          </div>
	          <ul class="sidebar-menu">
	              <li class="menu-header">마이페이지</li>
	              <li class="nav-item dropdown active">
	                <a href="#" class="nav-link"><i class="fas fa-fire"></i><span>프로필 관리</span></a>
	              </li>
	              <li class="menu-header">프로젝트 관리</li>
	              <li class="nav-item dropdown">
	                <a href="#" class="nav-link" data-toggle="dropdown"><i class="fas fa-columns"></i> <span>프로젝트 관리</span></a>
	              </li>
	              <li>
	              	<a class="nav-item dropdown" href="#"><i class="far fa-square"></i> <span>프로젝트 생성</span></a>
	              </li>
	              <li class="nav-item dropdown">
	                <a href="#" class="nav-link"><i class="fas fa-th"></i> <span>완료된 프로젝트</span></a>
	                
	              </li>	             
	              <li class="menu-header">커뮤니티</li>
	              <li class="nav-item dropdown">
	                <a href="#" class="nav-link"><i class="far fa-user"></i> <span>계정관리</span></a>
	              </li>
	              
	            <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
	              <a href="https://getstisla.com/docs" class="btn btn-primary btn-lg btn-block btn-icon-split">
	                <i class="fas fa-rocket"></i> Doit!
	              </a>
	            </div>
	            </ul>
	        </aside>
	      </div>
	 		
	 		<!-- 사이드바끝 -->
	 		<!-- Main Content -->
	      <div class="main-content">
	        <section class="section">
	          <div class="section-header">
	            <h1>프로필관리</h1>
	            
	          </div>
	          <div class="section-body">
	            <h2 class="section-title">반갑습니다님</h2>
	            <p class="section-lead">
	              	자신만의 독특한 프로필을 꾸며서 다른 두잇터들에게 자신을 어필해보세요!
	            </p>
	
	            <div class="row mt-sm-4">
	              <div class="col-12 col-md-12 col-lg-5">
	                <div class="card profile-widget">
	                  <div class="profile-widget-header">
	                    <img alt="image" src="<c:url value="/resources/other/theme/assets/img/avatar/avatar-1.png"/>" class="rounded-circle profile-widget-picture">
	                    <div class="profile-widget-items">
	                      <div class="profile-widget-item">
	                        <div class="profile-widget-item-label">프로젝트</div>
	                        <div class="profile-widget-item-value">34</div>
	                      </div>
	                      <div class="profile-widget-item">
	                        <div class="profile-widget-item-label">팔로워</div>
	                        <div class="profile-widget-item-value">1.2k</div>
	                      </div>
	                      <div class="profile-widget-item">
	                        <div class="profile-widget-item-label">팔로잉</div>
	                        <div class="profile-widget-item-value">682</div>
	                      </div>
	                    </div>
	                  </div>
	                  <div class="profile-widget-description">
	                    <div class="profile-widget-name" style="color:#444;"> ㅇ <div class="text-muted d-inline font-weight-normal"><div class="slash"></div> hi</div></div>
	                    	<!-- 자기소개 -->
	                    	<div class="profilesection" id="p_introduce" style="display:inline;">
	                    		<div class="profile-widget-name" style="font-family:'Noto Sans KR';color:#333;margin-top:12%;">자기소개</div>
	                    		<div class="profilesection" id="p_intro" style="color:#333;padding:10px;color:#555;">설명</div>
	                    	 </div>
	                    	<!-- 관심분야 -->
	                    	<div class="profilesection" id="p_filed"><div class="profile-widget-name" style="color:#333;">보유기술</div>
	                    		
	                    	</div>
	                    	<!-- 경력 -->
	                    	<div class="profilesection" id="p_spec"><div class="profile-widget-name" style="color:#333;">경력 사항</div> </div>
	                    	<!-- 학력 및 전공 -->
	                    	<div class="profilesection" id="p_edumajor"><div class="profile-widget-name" style="color:#333;">학력/전공</div> </div>
	                    	<!-- 보유자격증 -->
	                    	<div class="profilesection" id="p_certificate"><div class="profile-widget-name" style="color:#333;">보유 자격증</div> </div>
	                    
	
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </section>
	      </div>
	      <footer class="main-footer">
	        <div class="footer-left">
	          Copyright &copy; 2019 <div class="bullet"></div> Design By <a href="/">Doit</a>
	        </div>
	        <div class="footer-right">
	          beta.v1
	        </div>
	      </footer>
	    </div>
	  </div>
	<!--바디 끝-->
	
		
</script>
	
			
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
