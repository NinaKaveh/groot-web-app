<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All articles | Groot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
</head>

<!-- INCLUDE HEADER -->
<header>
    <%@ include file="adminHeader.jsp" %>
</header>
<!-- END OF INCLUDE HEADER -->
<body>
<c:redirect url="ArticleServlet?action=doGet"/>

<div class="row" style="margin-top:40px;margin-left: 10px">
    <div class="col-11" style="padding: 0px 10px 0px 36px;">
        <h3 style="margin-bottom: 30px;">Latests publications</h3>
        <!-- call all articles from database by article servlet -->
        <jsp:include page="/ArticleServlet"/>
        <c:out value="${message}"></c:out>
    </div>

</div>
</body>


<!-- INCLUDE FOOTER -->
<%@ include file="/user/globalFooterLogged.html" %>
<!-- DO NOT WRITE HERE -->
