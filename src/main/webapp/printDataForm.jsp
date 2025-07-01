<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Submitted Data</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
    <div class="container">
        <h2>Submitted Form Data (Stored in Session)</h2>

        <div class="output-block"><strong>First Name:</strong> <%= session.getAttribute("f_name") %></div>
        <div class="output-block"><strong>Last Name:</strong> <%= session.getAttribute("l_name") %></div>
        <div class="output-block"><strong>Password:</strong> <%= session.getAttribute("pass") %></div>
        <div class="output-block"><strong>Favorite Programming (Radio):</strong> <%= session.getAttribute("favProgramming") %></div>
        <div class="output-block"><strong>Favorite Programming (Dropdown):</strong> <%= session.getAttribute("favPr") %></div>

        <div class="output-block">
            <strong>Favorite Programming (Checkbox):</strong>
            <ul>
                <%
                    String[] favs = (String[]) session.getAttribute("favProgrammingWithCheckbox");
                    if (favs != null) {
                        for (String item : favs) {
                %>
                    <li><%= item %></li>
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

        <a href="logout.jsp">Reset Form (Logout)</a>
        
        <form action="<%= request.getContextPath() %>/DBConnection" method="get">
    <button type="submit">Check DB Connection</button>
</form>
        
        
    </div>
</body>
</html>
