<%@ page import="model.Article" %>
<%@ page import="services.ArticlesService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your profile</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <link rel="icon" type="image/png" href="../img/logo-groot.png">

</head>
<header>
    <%@ include file="/user/globalHeaderLogged.jsp" %>
</header>

<body>
<c:redirect url="ArticleServlet?action=doGet"/>


<div class="row" style="margin-top: 5%;">
    <div class="col-4">
        <img src="../img/user.png" alt="groot logo" width="150" style="margin-left: 50%">
    </div>
    <div class="col-8"><!-- collect personal information for the connected user -->
        <h2>Your personal information :</h2>
        <p>Id : ${user.getId()}</p>
        <p>Pseudo : ${user.getPseudo()}</p>
        <p>Email : ${user.getEmail()}</p>
        <p>Score : ${user.getScore()}</p>
    </div>

    <div class="col-1"></div>
    <div class="col-9">
        <h2>Your articles :</h2>
        <p style="color: cadetblue">
            *The annotation is an indication on the publish status of the article : 1 means that the article is
            published and 0 means it is not.
        </p><!-- display 3 last articles -->
        <jsp:include page="/ArticleServlet"/>
        <c:out value="${message}"></c:out>
    </div>
</div>

<footer>
    <%@ include file="/user/globalFooterLogged.html" %>
</footer>
</body>
</html>
