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
	            <a href="home">당신의 실력을 보여주세요,do it</a>
	          </div>
	          <div class="sidebar-brand sidebar-brand-sm">
	            <a href="home"></a>
	          </div>
	          <ul class="sidebar-menu active">
	              <li class="menu-header">스페이스 클라우드</li>
	              <li class="nav-item dropdown active">
            	    <a href="#" class="nav-link active"><i class="fas fa-map-marker-alt"></i> <span>두잇터를 위한 공간</span></a>
				</li>
			</ul>
	              
	            <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
	              <a href="home" class="btn btn-primary btn-lg btn-block btn-icon-split">
	                <i class="fas fa-rocket"></i> Doit!
	              </a>
	            </div>
	        </aside>
	      </div>
	 		
	 		<!-- 사이드바끝 -->
	 		<!-- Main Content -->
	      <div class="main-content">
	        <section class="section">
	          <div class="section-header">
	          	<div class="col-12 mb-4">
                <div class="hero text-white hero-bg-image" data-background="<c:url value="/resources/other/theme/assets/img/unsplash/eberhard-grossgasteiger-1207565-unsplash.jpg"/>">
                  <div class="hero-inner">
                    <h2>저렴하지만, 실속있는 국가 유후공간을 이용하세요!</h2>
                    <p class="lead">용도별로 아주 많은공간이 있습니다. 심지어 무료도 많다니요! </p>
                  </div>
                </div>
              	</div>
	          </div>
	          <form action="place" method="POST">
			       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			       <input type="hidden" name="page" value="${pagenum}"> 
			       <input class="btn btn-lg btn-info" type="submit" name="next" value="첫페이지로"> 
			       <input class="btn btn-lg btn-primary" type="submit" name="next" value="이전페이지" style="margin-left:10px;margin-right:10px;">
			       	<input class="btn btn-lg btn-primary" type="button"  value="${pagenum}페이지" style="margin-left:10px;margin-right:10px;">	       
			       <input class="btn btn-lg btn-primary" type="submit" name="next" value="다음페이지"style="margin-left:10px;margin-right:10px;">
			   </form>		
			  <div class="section-body">
			  	<div class="row">
				  	<c:forEach var="place" items="${placelist}" varStatus="i">
					  <div class="col-12 col-sm-6 col-md-6 col-lg-3">
		                <article class="article article-style-b">
		                  <div class="article-header">
		                  	<!-- image -->
		                    <div class="article-image" style="background-image:url('${place['IMGURL']}');" data-background="${place['IMGURL']}">
		                    </div>
		                    <!-- trending badge-->
		                    <c:if test="${i.index == 0}"> <!-- 숫자 비교 -->
		                    <div class="article-badge">
		                      <div class="article-badge-item bg-danger"><i class="fas fa-fire"></i>인기 장소</div>
		                    </div>
		                    
		                    </c:if>
		                  </div>
		                  <div class="article-details">
		                    <div class="article-category">${place['AREANM']}<div class="bullet"></div>${place['SVCSTATNM']}</div>
		                    <div class="article-title mt-3">
		                      <h2><a href="${place['SVCURL']}">${place['PLACENM']}</a></h2>
						      <p> ${place['SVCNM']}</p>
						      <p> 결제방법 : <b>${place['PAYATNM']} </b></p>
						      <p> 서비스형태 : <b>${place['MAXCLASSNM']} </b></p>
						      <p> 장소분류 : <b>${place['MINCLASSNM']} </b></p>
		                    <div class="article-cta">
		                      <a href="${place['SVCURL']}" class="btn btn-danger">예약 하기 <i class="fas fa-chevron-right"></i></a>
		                    </div>
		                  </div>
		                  </div>
		                </article>
		              </div>
		            </c:forEach>
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
