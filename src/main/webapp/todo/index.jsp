<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>TODOリスト</h1>
    <form method="get">
        <label for="task">タスク:</label>
        <input type="text" id="task" name="task" required>
        <button type="submit">タスクを追加</button>
    </form>

    <%
        List<String> tasks = (List<String>) session.getAttribute("taskList");
        if (tasks == null) {
            tasks = new ArrayList<>();
            session.setAttribute("taskList", tasks);
        }

        String newTask = request.getParameter("task");
        if (newTask != null && !newTask.trim().isEmpty()) {
            tasks.add(newTask);
        }
    %>

    <h2>タスク一覧</h2>
    <ol>
        <%
            for (String task : tasks) {
                out.println("<li>" + task + "</li>");
            }
        %>
    </ol>
</body>
</html>