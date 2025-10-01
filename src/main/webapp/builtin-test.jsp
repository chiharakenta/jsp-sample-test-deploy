<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>built in test</title>
</head>
<body>
    <h1>Hello Built in test!</h1>
    <p><%= request.getHeader("User-Agent") %></p>
    <p><%= request.getLocale() %></p>
</body>
</html>