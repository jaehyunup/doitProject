<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<html>
<head>
<!-- <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
$(document).ready(function(){
    $("#spreadBtn").click(function(){
        if($("#hiddenList").is(":visible")){
            $("#hiddenList").slideUp();
        }else{
            $("#hiddenList").slideDown();
        }
    });
});
</script> -->

    <title>장소 대관 목록</title>
</head>
<body>
<h1>
    장소 대관 목록
</h1>

	 <c:forEach var="place" items="${placelist}" varStatus="status">
	 	<p> ${status.index}번째</p>
	 	<img src="${place['IMGURL']}"/>
	 	<p> 장소명 : <b>${place['PLACENM']} </b></p>
	 	<p> 지역명 : <b>${place['AREANM']} </b></p>
	 	<p> 서비스명 : <b>${place['SVCNM']} </b></p>
	 	<p> 결제방법 : <b>${place['PAYATNM']} </b></p>
		<p> 서비스구분 : <b>${place['GUBUN']} </b></p>
		<p> 대분류명 : <b>${place['MAXCLASSNM']} </b></p>
		<p> 소분류명 : <b>${place['MINCLASSNM']} </b></p>
		<p> 서비스상태 : <b>${place['SVCSTATNM']} </b></p>
		<p> 서비스대상 : <b>${place['USETGTINFO']} </b></p>
		<p> 서비스 기간 : <b>${place['SVCOPNBGNDT']} </b> ~ <b>${place['SVCOPNENDDT']} </b></p>
		<p> 접수 기간 : <b>${place['RCPTBGNDT']} </b> ~ <b>${place['RCPTENDDT']} </b></p>
		<p> 서비스이용 시간 : <b>${place['V_MIN']} </b> ~ <b>${place['V_MAX']} </b></p>
		<p> 취소기간 : <b>${place['REVSTDDAYNM']} </b>로부터 <b>${place['REVSTDDAY']} </b>일 전까지 </p>
		<p> 전화번호 : <b>${place['TELNO']} </b></p>
		<a href="${place['SVCURL']}">**예약하기** </a>
		<p> 상세정보 : <b>${place['DTLCONT']} </b></p> 	
	 	<!-- <span id="test style="CURSOR: hand" onclick="if(plain.style.display=="none")
		{plain.style.display=''; test.innerText = '➤ 접기'} else {plain.style.display = 'none';
		test.innerText = '➤ 자세히보기'}">➤ 자세히보기</span>
		<div id="plain" style="display: none"><HR>
			
		 	</HR>
		 </div>
		
	 	<button id="spreadBtn" class="btn01">펼치기</button>
		<ul id="hiddenList" class="example01" style="display: none;">
		 	
	 	</ul> -->
	 </c:forEach>

</body>




</html>

<!-- 


유 무료
		<c:if test="${place['PAYATNM'] == '유료' }">
	 		<p> ${place['PLACENM']}</p>
	 	</c:if>


장소타입
		<c:if test="${place['MINCLASSNM'] == '다목적실' }">
	 		<p> ${place['PLACENM']}</p>
	 	</c:if>


지역명
		<c:if test="${place['AREANM'] == '구로구' }">
	 		<p> ${place['PLACENM']}</p>
	 	</c:if>
	 	

서비스상태
		<c:if test="${place['SVCSTATNM'] == '접수중' }">
	 		<p> ${place['PLACENM']}</p>
	 	</c:if>


 -->