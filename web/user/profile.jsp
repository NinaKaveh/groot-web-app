<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scores</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
</head>

<body>
<%@ include file="/user/globalHeaderLogged.jsp" %>

<div class="row" style="margin-top: 5%;">
    <div class="col-4">
        <img src="../img/user.png" alt="groot logo" width="150" style="margin-left: 50%">
    </div>
    <div class="col-8">
        <h2>Your personal information :</h2>
        <p>Pseudo : <%=pseudo%></p>
        <p>Email : <%=email%></p>
        <p>Score : <%=score%></p>
    </div>
</div>


<%@ include file="/user/globalFooterLogged.html" %>
</body>
</html>
