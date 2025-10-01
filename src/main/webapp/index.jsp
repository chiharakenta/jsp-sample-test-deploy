<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>homepage</title>
</head>
<body>
    <header>
        <%@ include file="header.html" %>
    </header>

    <main>
        <h1>こんにちは！</h1>
        <ul>
            <li><a href="/student-form.html">生徒登録</a></li>
        </ul>
        <%= session.isNew() %>
    </main>

    <footer>
        <%@ include file="footer.jsp" %>
    </footer>
</body>
</html>