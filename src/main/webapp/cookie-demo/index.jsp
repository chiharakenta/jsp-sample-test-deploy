<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookieデモ</title>
</head>
<body>
    <%
        String favoriteLanguage = "Java";
        String favoriteLanguageCookieName = "myApp.favoriteLanguage";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(favoriteLanguageCookieName)) {
                    favoriteLanguage = cookie.getValue();
                }
            }
        }
    %>
    <h4><%= favoriteLanguage %>の本</h4>
    <ul>
        <li>blah blah blah</li>
        <li>blah blah blah</li>
    </ul>

    <h4><%= favoriteLanguage %>のニュース</h4>
    <ul>
        <li>blah blah blah</li>
        <li>blah blah blah</li>
    </ul>

    <h4><%= favoriteLanguage %>の求人</h4>
    <ul>
        <li>blah blah blah</li>
        <li>blah blah blah</li>
    </ul>

    <hr />

    <a href="/cookie-demo/personalize-form.html">お気に入りのプログラミング言語を選ぶ</a>
</body>
</html>