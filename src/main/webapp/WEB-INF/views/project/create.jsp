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
    
    <form action="./create?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
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
<p>닉네임은 자동으로 들어가게 해야함</p>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="Formfooter">
                <button type="submit" class="btn_button">작성하기</button>
        </div>            
        
    </form>



    
</body>
</html>
