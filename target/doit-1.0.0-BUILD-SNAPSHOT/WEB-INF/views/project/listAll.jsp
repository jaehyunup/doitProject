<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    var result ='${msg}';
    
    if(result == '성공'){
        alert(result+'입니다.');
    }else{
        alert(result+'게시판등록 실패입니다.');
    }
    
</script>
 
 
</head>
<body>
 
    <table class="table table-board" border="1px" width="80%" align="center">
        <tr>
            <th style="width:10%" >글 번호</th>
            <th style="width:30%">제목</th>
            <th style="width:20%">최대멤버수</th>
            <th style="width:20%">작성자</th>
            <th style="width:20%">종류</th>
        </tr>
 
 
    <c:forEach items="${projectList }" var="projectVO">
        <tr>
            <td>${projectVO.no }</td>
            <td><a href="/project/detail?no=${projectVO.no}">${projectVO.name }</a></td>
            <td>${projectVO.maxMember }</td>
            <td>${projectVO.leader }</td>
            <td>${projectVO.type }</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
