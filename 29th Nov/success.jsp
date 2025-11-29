<%
String user = (String) session.getAttribute("userid");

if (user == null || user.trim().equals("")) {
%>
    You are not logged in<br/>
    <a href="index.jsp">Please Login</a>
<%
} else {
%>
    Welcome <%= user %><br/>
    <a href="logout.jsp">Log out</a>
<%
}
%>
