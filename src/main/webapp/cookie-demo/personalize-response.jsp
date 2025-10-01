<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ありがとうございます</title>
</head>

<%
    String favoriteLanguage = request.getParameter("favoriteLanguage");

    Cookie cookie = new Cookie("myApp.favoriteLanguage", favoriteLanguage);
    cookie.setMaxAge(60 * 60 * 24 * 365); // 1年
    response.addCookie(cookie);
%>

<body>
    <p>お気に入りのプログラミング言語を ${param.favoriteLanguage} に設定しました。</p>
    <a href="/cookie-demo">トップへ</a>
</body>
</html>