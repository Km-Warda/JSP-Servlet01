<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Submitted Data</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
    <div class="container">
        <h2>Submitted Form Data:</h2>

        <div class="output-block"><strong>First Name:</strong> <%= request.getParameter("f_name") %></div>
        <div class="output-block"><strong>Last Name:</strong> <%= request.getParameter("l_name") %></div>
        <div class="output-block"><strong>Password:</strong> <%= request.getParameter("pass") %></div>
        <div class="output-block"><strong>Favorite Programming (Radio):</strong> <%= request.getParameter("favProgramming") %></div>
        <div class="output-block"><strong>Favorite Programming (Dropdown):</strong> <%= request.getParameter("favPr") %></div>

        <div class="output-block">
            <strong>Favorite Programming (Checkbox):</strong>
            <ul>
                <%
                    String[] checkboxes = request.getParameterValues("favProgrammingWithCheckbox");
                    if (checkboxes != null) {
                        for (String checkbox : checkboxes) {
                %>
                    <li><%= checkbox %></li>
                <%
                        }
                    } else {
                %>
                    <li>None selected</li>
                <%
                    }
                %>
            </ul>
        </div>

        <a href="index.jsp">← Back to Form</a>
    </div>
</body>
</html>
