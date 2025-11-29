<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
</head>
<body>

<form method="post" action="registration.jsp">

    <div style="display:flex; justify-content:center; margin-top:40px;">
        <table border="1" width="30%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2">Enter Information Here</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" required></td>
                </tr>

                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" required></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" required></td>
                </tr>

                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="uname" required></td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" required></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Submit"></td>
                    <td><input type="reset" value="Reset"></td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align:center;">
                        Already registered? <a href="index.jsp">Login Here</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

</form>

</body>
</html>
