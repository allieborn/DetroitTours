<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PAS8
  Date: 5/30/2017
  Time: 1:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Favorites</title>
</head>
<body>
<h1>This is the Favorite Page</h1>
<table border=1>
    <c:forEach var="myvar" items="${cList}">
        <tr>
            <td>${myvar.userId} -- this will be remove</td>
            <td>${myvar.userName} -- this will be remove</td>
            <td>${myvar.homeAddress}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
