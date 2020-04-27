<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="../js/includeHeaderFooter.js"></script>
    <title>Home Page</title>
</head>
<body>
<header>
    <%@ include file="../user/userHeader.html"%>
</header>

<main>
    <h1>Hi ${name}</h1>

    <section id="latestArticles">
        <h3>Latest articles</h3>
        <br><br><br>
    </section>

    <section id="lastestEvents">
        <h3>Latest events</h3>
        <br><br><br>
    </section>
</main>

<footer>
    <%@ include file="../user/userFooter.html"%>
</footer>
</body>
</html>
