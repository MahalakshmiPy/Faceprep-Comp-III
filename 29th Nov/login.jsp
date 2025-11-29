<%@ page import ="java.sql.*" %>
<%
String userid = request.getParameter("uname");    
String pwd = request.getParameter("pass");

Class.forName("com.mysql.jsp.Driver");  // ← Corrected driver

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
"root", "root");

Statement st = con.createStatement();
ResultSet rs;

rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");

if (rs.next()) {
    session.setAttribute("userid", userid);
    response.sendRedirect("success.jsp");
} else {
    out.println("Invalid password <a href='index.jsp'>try again</a>");
}
%>

