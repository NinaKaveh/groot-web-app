<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register form</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
    <script type="text/javascript" src="js/formValidation.js"></script>
</head>

<header>
    <%@ include file="/globalHeader.html" %>
</header>
<body>

<section class="formtable">
    <h1>Create your account and join us!</h1>
    <h3>Register form</h3>
    <form method="post" name="RegUserForm" onsubmit="return checkRegister();"
          action="${pageContext.request.contextPath}/RegServlet">
        <table class="table table-borderless">
            <tbody>
            <tr>
                <th scope="row">Pseudo</th>
                <td><input type="text" name="pseudo"></td>
            </tr>
            <tr>
                <th scope="row">Email</th>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <th scope="row">Password</th>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <th scope="row">Confirm Password</th>
                <td><input type="password" name="password2"></td>
            </tr>
            <tr>
                <th scope="row" colspan="2">By clicking on the register button, you accept the website term of use.
                    <a href="termsofuse.jsp" style="color: #AAAAAA">Click here to consult them</a>
                </th>
            </tr>
            <tr>
                <th scope="row"></th>
                <td><input type="submit" class="btn btn-primary" style="background-color: #111e84;" value="Register"></td>
                <td></td>
            </tr>
            </tbody>
        </table>
        <a style="color: darkslategrey" href="login.jsp">Already have an account? Login here</a>
    </form>
</section>

</body>
<footer>
    <%@ include file="/globalFooter.html" %>
</footer>
</html>
