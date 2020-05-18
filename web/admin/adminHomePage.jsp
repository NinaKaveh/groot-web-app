<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
    <title>Home Page</title>
</head>
<body>
<header>
    <%@ include file="../admin/adminHeader.jsp" %>
</header>

<main>
    <section id="welcome">
        <h1>Hi ${user.getPseudo()}!</h1>
        <h3>Welcome on your homepage</h3>
    </section>

    <c:redirect url="AdminArticleServlet?action=doGet"/>

    <div class="col-11" style="margin-top:40px;margin-left: 10px">
        <div style="padding: 0px 10px 0px 36px;">
            <h3 style="margin-bottom: 30px;">Latest articles created :</h3>
            <p style="color: green"><c:out value="${editArticle}"></c:out></p>

            <jsp:include page="/AdminArticleServlet"/>
            <c:out value="${message}"></c:out>
        </div>

    </div>
</main>

<footer>
    <%@ include file="../user/globalFooterLogged.html" %>
</footer>
</body>
</html>
