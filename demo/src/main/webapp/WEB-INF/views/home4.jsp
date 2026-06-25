<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>

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
    <title>Home4</title>
</head>
<body>
    <h1>home4</h1>
    <p>jsp에서 자바코드로 데이터를 출력 : ${serverTime}</p>
    <h2>나의 취미를 출력합니다.</h2>
    <c:forEach var="data" items="${list}">
        <hr>
        <c:out value="${data}"/>
    </c:forEach>

<h2>나의 취미를 맵으로 출력</h2>
<table border="2">
    <tr>
        <td>${map["data1"]}</td>
        <td>${map["data1"]}</td>
    </tr>
    <tr>
        <td>${map["data2"]}</td>
        <td>${map["data2"]}</td>
    </tr>
    <tr>
        <td>${map["data3"]}</td>
        <td>${map["data4"]}</td>
    </tr>
    <tr>
        <td>${map["data4"]}</td>
        <td>${map["data4"]}</td>
    </tr>
    <tr>
        <td>${empty map}</td>
        <td>${empty map}</td>
    </tr>
</table>
    <hr>
    <h2>문자열 분리 방법 : String tokenizer 방식</h2>
    <c:forTokens var="hobby" items="${hobbyString}" delims=",">
        <p>${hobby}</p>
    </c:forTokens>
</body>
</html>