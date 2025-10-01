<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String message = (String) request.getAttribute("message");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index Page</title>
</head>
<body>
<h2><%= message %></h2>
<a href="/">トップへ</a>
</body>
</html>
