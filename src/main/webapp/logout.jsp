<%@ page session="true" %>
<%
    session.invalidate(); // clear all session data
    response.sendRedirect("index.jsp"); // redirect back to form
%>
