<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Updated article status</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
</head>
<header>
    <%@ include file="/admin/adminHeader.jsp" %>
</header>

<body>

<div class='row formtable' style="margin-left: 2%; text-align: center">
    <p style="color: green">${editArticle}</p>
    <p>
        <a href="${pageContext.request.contextPath}/admin/adminHomePage.jsp" style="color: #808080">Go back to the home page</a>
    </p>
</div>
</body>

<footer>
    <%@ include file="/user/globalFooterLogged.html" %>
</footer>
</html>
