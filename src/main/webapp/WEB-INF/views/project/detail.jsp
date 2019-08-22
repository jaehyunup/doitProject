<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kakaolove.doit.security.customUserDetails"%>
<%@ page import="com.kakaolove.doit.vo.userProfileVO"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>





<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--  <link href="<c:url value="/resources/css/bootstrap/bootstrap.min.css"/>" rel="stylesheet">-->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">-->
<!-- CSS Libraries -->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">

<!-- google fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&display=swap"
	rel="stylesheet">

<!-- Template CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/other/theme/assets/css/components.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/other/theme/assets/css/style.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">

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
						<li class="nav-item dropdown active"><a href="#"
							class="nav-link"><i class="fas fa-fire"></i><span>프로필
									관리</span></a></li>
						<li class="menu-header">프로젝트 관리</li>
						<li class="nav-item dropdown"><a href="#" class="nav-link"
							data-toggle="dropdown"><i class="fas fa-columns"></i> <span>프로젝트
									관리</span></a></li>
						<li><a class="nav-item dropdown" href="#"><i
								class="far fa-square"></i> <span>프로젝트 생성</span></a></li>
						<li class="nav-item dropdown"><a href="#" class="nav-link"><i
								class="fas fa-th"></i> <span>완료된 프로젝트</span></a></li>
						<li class="menu-header">커뮤니티</li>
						<li class="nav-item dropdown"><a href="#" class="nav-link"><i
								class="far fa-user"></i> <span>계정관리</span></a></li>

						<div class="mt-4 mb-4 p-3 hide-sidebar-mini">
							<a href="https://getstisla.com/docs"
								class="btn btn-primary btn-lg btn-block btn-icon-split"> <i
								class="fas fa-rocket"></i> Doit!
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
		            	<h1>프로젝트 구경하기</h1>	            
		          	</div>
		          	<div class="section-body">
		          		
		          	
		          	
		            	<div class="row">
		            		<div class="col-12 col-md-12 col-lg-6"> <!-- 왼쪽 -->
		            			<div class="card">
		            			
			            			<div class="card-body">	
			            				<div class="gallery-item" data-image="<c:url value="/resources/other/theme/assets/assets/img/news/img09.jpg"/>" data-title="Image 1" href="assets/img/news/img09.jpg" title="Image 1" style="height: 300px;"></div>
			            			</div>
		            			</div>
		            		</div>
		            		<div class="col-12 col-md-12 col-lg-6"> <!-- 오른 -->
		            			<div class="card">
			            			<div class="card-body">					
			            				<h5 class="section-title" style="color:#222;">프로젝트 이름</h5>
			            				<p class="mt-3" style="color:#333;">${pVO.name}</p>			            						
			            			
			            				<h5 class="section-title" style="color:#222;">프로젝트 분야</h5>
			            				<p class="mt-3" style="color:#333;">${pVO.type }</p>		            	
			            				<h5 class="section-title" style="color:#222;">팀장</h5>
			            				<p class="mt-3"  style="color:#333;">
			            					<img alt="image" class="mr-3 rounded-circle" width="30" src="<c:url value="/resources/other/theme/assets/img/avatar/avatar-1.png"/>">
			            					${pVO.leader }
			            				</p>
			            				<h5 class="section-title mb-2" style="color:#222;">모집 인원수</h5>
										<button type="button" class="btn btn-lg btn-primary btn-icon icon-left mt-3">
                       						 <i class="fas fa-plane"></i>총 <span class="badge badge-transparent">${pVO.maxMember}명</span>
                     					</button>
                     					<c:if test="${checkjoin == 1}">
                     					<h5 class="section-title mb-2" style="color:#222;">프로젝트 참가 요청</h5>                  					
                     					<form action="joinproject" method="post">
							               <input type="hidden" name="userid" value="<%=name%>"/>
							               <input type="hidden" name="no" value="${pVO.no}"/>
							               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							               <input type="submit" class="btn btn-lg btn-primary btn-icon icon-left mt-3" value="신청하기"/>
							            </form>
										</c:if>  
										<c:if test="${checkjoin == 0}">
                     					<h5 class="section-title mb-2" style="color:#222;">프로젝트 참가 요청</h5>                  					
                     					<form action="joinproject" method="post">
							               <input type="hidden" name="userid" value="<%=name%>"/>
							               <input type="hidden" name="no" value="${pVO.no}"/>
							               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							               <input type="submit" class="btn btn-lg btn-primary btn-icon icon-left mt-3" value="이미 참가신청되었습니다" disabled="disabled"/>
							            </form>
										</c:if>     
														
			            				
			            			</div>
		            			</div>
		            		</div>
		            		<div class="col-12 col-md-12 col-lg-12">
		            			<div class="card">
					              <div class="card-header">
					                <h4>프로젝트 설명</h4>
					              </div>
					              <div class="card-body">
					                <p>${pVO.explan}</p>
					              </div>
					  
					            </div>
		            		</div>            	
		            	</div>
		            	
		            	<div class="row">
		            		<!-- 팀원 카드크기 lg-3 반복 -->
			            	<div class="col-12 col-md-12 col-lg-4">
									<div class="card">
			                  <div class="card-header">
			                    <h4>Team</h4>
			                  </div>
			                  <div class="card-body">
			                    <ul class="list-unstyled list-unstyled-border">
			                      <li class="media">
			                        <img alt="image" class="mr-3 rounded-circle" width="50" src="<c:url value="/resources/other/theme/assets/img/avatar/avatar-1.png"/>">
			                        <div class="media-body">
			                          <div class="mt-0 mb-1 font-weight-bold">닉네임</div>
			                          <div class="text-success text-small font-600-bold"><i class="fas fa-circle"></i>직종</div>
			                        </div>
			                      </li>
			                      <li class="media">
			                        <img alt="image" class="mr-3 rounded-circle" width="50" src="<c:url value="/resources/other/theme/assets/img/avatar/avatar-2.png"/>">
			                        <div class="media-body">
			                          <div class="mt-0 mb-1 font-weight-bold">닉네임</div>
			                          <div class="text-small font-weight-600 text-muted"><i class="fas fa-circle"></i>직종</div>
			                        </div>
			                      </li>
			                      <li class="media">
			                        <img alt="image" class="mr-3 rounded-circle" width="50" src="<c:url value="/resources/other/theme/assets/img/avatar/avatar-3.png"/>">
			                        <div class="media-body">
			                          <div class="mt-0 mb-1 font-weight-bold">닉네임</div>
			                          <div class="text-small font-weight-600 text-success"><i class="fas fa-circle"></i> 직종</div>
			                        </div>
			                      </li>
			                      <li class="media">
			                        <img alt="image" class="mr-3 rounded-circle" width="50" src="<c:url value="/resources/other/theme/assets/img/avatar/avatar-4.png"/>">
			                        <div class="media-body">
			                          <div class="mt-0 mb-1 font-weight-bold">닉네임</div>
			                          <div class="text-small font-weight-600 text-success"><i class="fas fa-circle"></i> 직종</div>
			                        </div>
			                      </li>
			                    </ul>
			                  </div>
							</div>           	
		            	</div>
	            	</div>
	            </div>
				</section>
				
			
			</div>
		</div>
		<!--바디 끝-->
	</div>



	<!-- General JS Scripts -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

	<!-- <script src="<c:url value="/resources/js/bootstrap/bootstrap.min.js"/>"></script> -->

	<!-- Page Specific JS File -->
	<script
		src="<c:url value="/resources/other/theme/assets/js/stisla.js"/>"></script>
	<!-- Template JS File -->
	<script
		src="<c:url value="/resources/other/theme/assets/js/scripts.js"/>"></script>
	<script
		src="<c:url value="/resources/other/theme/assets/js/custom.js"/>"></script>
</body>


</html>
