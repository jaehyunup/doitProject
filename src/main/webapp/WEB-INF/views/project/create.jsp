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
      



   <body>
     <div id="app">
       <div class="main-wrapper container-fluid">
         <div class="navbar-bg"></div>
         <!-- 네비바 -->
         <%@include file='../tiles/navbar.jsp'%>
   
         <!-- Main Content -->
         <div class="main-content">
           <section class="section">
             <div class="section-header">
               <h1>두잇에서 핫한 프로젝트!</h1>
               
             </div>
   
             <div class="section-body">
               <h2 class="section-title"><strong>Hot</strong> 프로젝트</h2>
               <p class="section-lead">This page is just an example for you to create your own page.</p>
    <form action="create?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
        <div class="createForm">
            <label >제목</label>
            <input type="text" name="name" class="createForm" placeholder = "제목" required>
        </div>
        <div class="createForm">
            <label >내용</label>
            <textarea rows="4" cols="15" name="explan" class="createForm" placeholder = "내용" required></textarea>
        </div>
        <div class="createForm">
            <label >최대인원</label>
            <input type="number" name="maxMember" class="createForm" min="1" placeholder = "최대인원" required>
        </div>
        <div class="createForm">
            <label >프로젝트 종류</label>
            <input type="radio" name="type" value="프로젝트" class="createForm" placeholder = "종류" required>프로젝트
            <input type="radio" name="type" value="스터디" class="createForm" placeholder = "종류">스터디
            <input type="radio" name="type" value="공모전" class="createForm" placeholder = "종류">공모전
            <input type="radio" name="type" value="대회" class="createForm" placeholder = "종류">대회
            <input type="radio" name="type" value="기타" class="createForm" placeholder = "종류">기타
        </div>
        <input type="file" name="uploadFile">
        </div>
        <input type="hidden" name="userid" value="<%=name %>"/>
        <p><%=name %></p>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="Formfooter">
                <button type="submit" class="btn_button">작성하기</button>
        </div>            
        
   		 </form>
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