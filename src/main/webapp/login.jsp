<%--
  Created by IntelliJ IDEA.
  User: abaraka
  Date: 2019-06-11
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>login</title>
</head>
<body>

<h3>90's Google</h3>
<form action="" method="post">
    <label for="u">username</label>
    <input type="text" id="u" name="u" >
    <label for="p">password</label>
    <input type="password" id="p" name="p" >
</form>

<%--username--%>
<c:if test="${param.u != null}">
    <p>You searched for: ${param.u}</p>
</c:if>
<%--password--%>
<c:if test="${param.p != null}">
    <p>You searched for: ${param.p}</p>
</c:if>

</body>
</html>