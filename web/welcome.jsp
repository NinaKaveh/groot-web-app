<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome on your account | Groot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="js/includeHeaderFooter.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="img/logo-groot.png">
</head>

<!-- INCLUDE HEADER -->
<header>
    <%@ include file="/globalHeaderLogged.html" %>
</header>
<!-- END OF INCLUDE HEADER -->

<body>

<div class="row">
    <section id="welcome">
        <h1>Hi @User!</h1>
        <h3>Welcome on your homepage</h3>
    </section>
</div>

<div class="row">
    <div class="col-7">
        <h3>Latest publications:</h3>
    </div>
    <div class="col-3">
    <h3>My score</h3>
        <h3>Events calendar:</h3>
    </div>
</div>

</body>


<!-- INCLUDE FOOTER -->
<%@ include file="/globalFooterLogged.html" %>
<!-- DO NOT WRITE HERE -->
