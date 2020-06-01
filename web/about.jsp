<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About the project | Groot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="img/logo-groot.png">
</head>

<!-- INCLUDE HEADER -->
<header>
    <%@ include file="/globalHeader.html" %>
</header>
<!-- END OF INCLUDE HEADER -->

<body>

<div class="row">
    <section id="welcome">
        <h1>Let's present Groot</h1>
    </section>
</div>

<div class="row">
    <div class="col-4">
        <img src="img/logo-groot.png" alt="groot logo" width="150" style="margin-left: 50%">
    </div>
    <div class="col-8"><!-- description text -->
        <p align="">Groot is a participative platform. Users can view or share ecology-related articles and events.<br>
            Students and ISEP staff are able to follow the environmental news on this platform.<br>
            The information coming from ISEP members will be controlled by an administrator (every time you publish articles or events).<br>
            A point will be given to allow students to challenge each other by rewarding them every time they share content.
        </p>
    </div>
</div>

</body>

<footer>
    <%@ include file="/globalFooter.html" %>
</footer>
</html>