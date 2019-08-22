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
		
		<script>
		function deferVideo() {

		    //defer html5 video loading
		  $("video source").each(function() {
		    var sourceFile = $(this).attr("data-src");
		    $(this).attr("src", sourceFile);
		    var video = this.parentElement;
		    video.load();
		    // uncomment if video is not autoplay
		    //video.play();
		  });

		}
		window.onload = deferVideo;
		</script>



	<body>
	  <div id="app">
	    <div class="main-wrapper container-fluid" style="padding-left:0px;padding-right:0px;">
	      <div class="navbar-bg"></div>
	      <!-- 네비바 -->
	      <%@include file='tiles/homenavbar.jsp'%>
			
		  <!-- 점보트론 -->
		  	<div class="jumbotron jumbotron-fluid" style="height:100%;">			
					<video autoplay muted loop poster="">    
					    <source src="" data-src="<c:url value="/resources/videos/slider2.mp4"/>" type="video/mp4" >
					</video>			
					  <div class="container text-white pt-5">
					  	<hr class="my-5">
					    <h1 class="slider-text1 text-white">더이상 생각만 하지 마세요. </h1>
					    <hr class="my-5">
					    <p class="slider-text2">Doit</p>
					    <hr class="my-4">
					    <p class="pl-2 slider-text3">당신의 꿈을 이루어줄 팀 네트워킹 플랫폼</p>
					    <hr class="my-4">
					    <a class="ml-2 btn btn-primary btn-lg" href="#" role="button">로그인</a>
					    <a class="ml-2 btn btn-info btn-lg" href="#" role="button">회원가입</a>			
					    			
					  </div>
					  <!-- /.container -->
					</div>
					<!-- /.jumbotron -->
	     
	      <!-- Main Content -->
	      <div class="main-content" style="padding-left:30px;">
	        <section class="section">
	          <div class="section-header">
	            <h1>두잇에서 핫한 프로젝트!</h1>
	            
	          </div>
	
	          <div class="section-body">
	             <div class="section-body">
			  	<div class="row">
				  	<c:forEach var="project" items="${projectList}" varStatus="i">
					  <div class="col-12 col-sm-6 col-md-6 col-lg-3">
		                <article class="article article-style-b">
		                  <div class="article-header">
		                  	<!-- image -->
		                    <div class="article-image" data-background="<c:url value='/resources/other/theme/assets/img/news/img13.jpg'/>">
		                    </div>
		                    <!-- trending badge-->
		                    <c:if test="${i.index == 0}"> <!-- 숫자 비교 -->
		                    <div class="article-badge">
		                      <div class="article-badge-item bg-danger"><i class="fas fa-fire"></i>Trending</div>
		                    </div>
		                    </c:if>
		                  </div>
		                  <div class="article-details">
		                    <div class="article-category">${project.type}<div class="bullet"></div>${project.maxMember}명 모집중</div>
		                    <div class="article-title mt-3">
		                      <h2><a href="detail?no=${project.no}">${project.name}</a></h2>
		                    </div>
		                    <p>${project.explan} </p>
		                    <div class="article-cta">
		                      <a href="detail?no=${project.no}">Read More <i class="fas fa-chevron-right"></i></a>
		                    </div>
		                  </div>
		                </article>
		              </div>
		            </c:forEach>
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
