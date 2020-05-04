<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script type="text/javascript" src="js/formValidation.js"></script>


</head>
<body>
<%@ include file="/globalHeader.html" %>

<section class="formtable">
    <h1>Connect to your account!</h1>
    <h3>Login</h3>
    <form method="post" name="LoginUserForm" onsubmit="return checkLogin();"
          action="${pageContext.request.contextPath}/LoginServlet">
        <table class="table table-borderless">

            <!-- If the user has just registered, a message of validation is displayed -->
            <p style="color: green;">${message}</p>

            <tbody>
            <tr>
                <th scope="row">Email</th>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <th scope="row">Password</th>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <th scope="row"></th>
                <td><input type="submit" class="btn btn-primary" style="background-color: #111e84;" value="Login"></td>
            </tr>
            </tbody>
        </table>
        <a style="color: darkslategrey;" href="register.jsp">Not a member yet ? Register now for free</a>
    </form>
</section>



<%@ include file="/globalFooter.html" %>
</body>
</html>
