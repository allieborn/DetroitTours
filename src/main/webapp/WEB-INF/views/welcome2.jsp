<%--
  Created by IntelliJ IDEA.
  User: PAS8
  Date: 5/23/2017
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Welcome 2</title>
</head>
<body>
<table border=1>
    <c:forEach var="myvar1" items="${cList}">
        <tr>
            <td> ${myvar1.userId}</td>
            <td> ${myvar1.firstName}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
