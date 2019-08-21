<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세보기</title>
 
</head>
<body>
<p>게시글 번호 : ${pVO.no }</p>
<p>게시글 제목 : ${pVO.name }</p>
<p>설명 : ${pVO.explan }</p>
<p>최대 인원수 : ${pVO.maxMember }  나중에 현재 인원수 추가</p>
<p>작성자 : ${pVO.leader }</p>
<p>모집 종류 : ${pVO.type }</p>
</body>
</html>
