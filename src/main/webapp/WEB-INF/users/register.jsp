<%--
  Created by IntelliJ IDEA.
  User: abaraka
  Date: 2019-06-17
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--  username;
    email;
    password;--%>
    <div class="container">
        <h1>Create a user</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="Username">Username</label>
                <input id="Username" name="Username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <textarea id="email" name="email" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="password">password</label>
                <textarea id="password" name="password" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
