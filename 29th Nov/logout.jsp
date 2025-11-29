<%
    session.invalidate();     // Ends the session completely
    response.sendRedirect("index.jsp");   // Redirect to login page
%>
