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
        <h1>Hi ${name}!</h1>
        <h3>Welcome on your homepage</h3>
    </section>
</div>

<div class="row">
    <div class="col-8" style="padding: 0px 10px 0px 36px;">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">Latests publications</li>
            </ol>
        </nav>

        <div class="row">
            <div class="col">
               <h5>A wonderful party at ISEP</h5>
                <p style="text-align: justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s It was popularised...</p>
                <a href="#" class="btn btn-primary" style="background-color: #111e84;">Read more...</a>
            </div>
            <div class="col">
                <h5>Sunset in Paris</h5>
                <p style="text-align: justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s It was popularised...</p>
                <a href="#" class="btn btn-primary" style="background-color: #111e84;">Read more...</a>
            </div>
            <div class="col">
                <h5>Jardisep plants</h5>
                <p style="text-align: justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s It was popularised...</p>
                <a href="#" class="btn btn-primary" style="background-color: #111e84;">Read more...</a>
            </div>
            <div class="col-2">
                <a href="#" class="btn btn-primary" style="background-color: #111e84;">See more articles...</a>
            </div>
        </div>
    </div>
    <div class="col-4">
        <button type="button" class="btn btn-light" style="background-color:#e0effd; width: 85%">
            My score: <span class="badge badge-success">4 points</span>
        </button>
        <h5 style="margin-top:50px;">Events calendar:</h5>
    </div>
</div>

</body>


<!-- INCLUDE FOOTER -->
<%@ include file="/globalFooterLogged.html" %>
<!-- DO NOT WRITE HERE -->
