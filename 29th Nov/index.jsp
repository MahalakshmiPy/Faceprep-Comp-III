<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Login Page</title>
</head>
<body>

<form method="post" action="login.jsp">
    <div style="display:flex; justify-content:center; margin-top:50px;">
        <table border="1" width="30%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2">Login Here</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="uname" required></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login"></td>
                    <td><input type="reset" value="Reset"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        Yet Not Registered? <a href="reg.jsp">Register Here</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</form>

</body>
</html>
