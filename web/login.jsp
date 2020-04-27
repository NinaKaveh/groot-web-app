<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
    <script type="text/javascript" src="js/formValidation.js"></script>


</head>
<body>
<%@ include file="/globalHeader.html" %>

<form method="post" name="LoginUserForm" onsubmit="return checkLogin();" action="${pageContext.request.contextPath}/LoginServlet">
    <h1>Connect to your account!</h1>
    <h3>Login</h3>
    <!-- If the user has just registered, a message of validation is displayed -->
    <p style="color: brown;">${message}</p>
    <div id="error"></div>
    <table>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td></td>
            <td><br><input type="submit" value="Login"> <br></td>
        </tr>
    </table>
    <a style="color: darkslategrey;" href="register.jsp">Not a member yet ? Register now for free</a>

</form>


<%@ include file="/globalFooter.html" %>
</body>
</html>
