<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>게시판</title>
</head>
<body>
<h1>
    게시판 등록하기  
</h1>
    
    <form action="" method="POST">
        <div class="createForm">
            <label >제목</label>
            <input type="text" name="name" class="createForm" placeholder = "제목">
        </div>
        <div class="createForm">
            <label >내용</label>
            <textarea rows="4" cols="15" name="explan" class="createForm" placeholder = "내용"></textarea>
        </div>
        <div class="createForm">
            <label >최대인원</label>
            <input type="number" name="maxMember" class="createForm" min="1" placeholder = "최대인원">
        </div>
        <div class="createForm">
            <label >프로젝트 종류</label>
            <input type="text" name="type" class="createForm" placeholder = "종류">
        </div>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="Formfooter">
                <button type="submit" class="btn_button">작성하기</button>
        </div>            
        
    </form>



    
</body>
</html>
