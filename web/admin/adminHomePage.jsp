<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
    <title>Home Page</title>
</head>
<body>
<header>
    <%@ include file="../admin/adminHeader.jsp"%>
</header>

<main>
    <h1>Hi ${name}</h1>

    <section id="latestArticles">
        <h3>Latest activity :</h3>
        <br><br><br>
    </section>

</main>

<footer>
    <%@ include file="../user/globalFooterLogged.html"%>
</footer>
</body>
</html>
