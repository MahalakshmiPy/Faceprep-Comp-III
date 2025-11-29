<%@ page import="java.sql.*" %>
<%
    String user  = request.getParameter("uname");    
    String pwd   = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");

    // Basic null check
    if(user == null || pwd == null || fname == null || lname == null || email == null) {
        response.sendRedirect("index.jsp");
        return;
    }

    Connection con = null;
    PreparedStatement pst = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC",
            "root",
            "dbpass"
        );

        String query = "INSERT INTO members (first_name, last_name, email, uname, pass, regdate) "
                     + "VALUES (?, ?, ?, ?, ?, CURDATE())";

        pst = con.prepareStatement(query);
        pst.setString(1, fname);
        pst.setString(2, lname);
        pst.setString(3, email);
        pst.setString(4, user);
        pst.setString(5, pwd);

        int i = pst.executeUpdate();

        if (i > 0) {
            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }

    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try { if(pst != null) pst.close(); } catch(Exception ex) {}
        try { if(con != null) con.close(); } catch(Exception ex) {}
    }
%>
