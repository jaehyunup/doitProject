<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>Custom Login with Username and Password</h3>
<!-- For logout  -->
<c:if test="${not empty logoutMsg}">
    <div style="color: #0000ff;" > 
        <h3> ${logoutMsg} </h3>
    </div>
</c:if>

<!-- login processing module of spring security 4 -->
<form action="<c:url value="/login"/>" method="post">
<!-- For failed user authentication  -->
  <c:if test="${not empty errorMsg}">
    <div style="color: #ff0000;"> 
        <h3> ${errorMsg} </h3>
    </div>
  </c:if>

  <table>
    <tr><td>User:</td><td><input type='text' name='username' value=''></td></tr>
    <tr><td>Password:</td><td><input type='password' name='password' /></td></tr>
    <tr><td colspan='2'><input name="submit" type="submit" value="LOGIN" /></td></tr>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  </table>
</form>
</body>
</html>