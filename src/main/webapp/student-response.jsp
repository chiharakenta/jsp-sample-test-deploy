<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>response</title>
</head>
<body>
    <p>登録された生徒: ${param.lastName} ${param.firstName}</p>
    <p>国籍: ${param.country}</p>
    <p>好きな言語</p>
    <ul>
        <%
            String[] languages = request.getParameterValues("favoriteLanguage");

            if (languages == null) {
                out.println("<li>無し</li>");
                return;
            }
            for (int i = 0; i < languages.length; i++) {
                out.println("<li>" + languages[i] + "</li>");
            }
        %>
    </ul>
    <a href="/">トップへ</a>
</body>
</html>