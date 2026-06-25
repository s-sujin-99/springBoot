<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>
<%
    /* Script를 사용하면 자바코드를 사용할 수 있음. */
    Date date = new Date();
    String serverTime = date.toString();

    pageContext.setAttribute("serverTime", serverTime);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home3</title>
</head>
<body>
<!--     헤더 내용을 가져온다. -->
<%@ include file="./includes/header.jsp"%>
<p>jsp에서 자바코드로 데이터를 출력 : ${serverTime}</p>
<p>jsp에서 자바코드로 데이터를 출력 : <%=serverTime%></p>
<!-- 푸터 내용을 가져온다. -->
<%@ include file="./includes/footer.jsp"%>

</body>
</html>