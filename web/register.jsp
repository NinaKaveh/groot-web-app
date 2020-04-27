<%--
  Created by IntelliJ IDEA.
  User: Nina
  Date: 23/04/2020
  Time: 09:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register form</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
</head>
<body>
<%@ include file="/globalHeader.html" %>

<section class="formtable">
    <h1>Create your account and join us!</h1>
    <h3>Register form</h3>
    <form method="post" name="RegUserForm" onclick="return checkRegister();"
          action="${pageContext.request.contextPath}/RegServlet">
        <table class="table table-borderless">

            <!-- If the user has just registered, a message of validation is displayed -->
            <p style="color: brown;">${message}</p>
            <div id="error"></div>

            <tbody>
            <tr>
                <th scope="row">Pseudo</th>
                <td><input type="text" name="pseudo"></td>
                <td id="pseudoerror"></td>
            </tr>
            <tr>
                <th scope="row">Email</th>
                <td><input type="text" name="email"></td>
                <td id="emailerror"></td>
            </tr>
            <tr>
                <th scope="row">Password</th>
                <td><input type="password" name="password"></td>
                <td id="passerror"></td>
            </tr>
            <tr>
                <th scope="row">Confirm Password</th>
                <td><input type="password" name="password2"></td>
                <td id="passerror2"></td>
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

<%@ include file="/globalFooter.html" %>

</body>
</html>
