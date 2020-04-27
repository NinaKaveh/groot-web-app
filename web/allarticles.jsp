<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All articles | Groot</title>
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


<div class="row" style="margin-top:40px;margin-left: 10px">
    <div class="col-11" style="padding: 0px 10px 0px 36px;">
        <h3 style="margin-bottom: 30px;">Latests publications</h3>

        <div class="row" style="border: solid 1px black; padding: 20px 30px 20px 30px; margin-bottom: 10px">
                <h5>A wonderful party at ISEP</h5>
            <p style="font-size: 12px; margin-left: 20px"><i>Published on 11.04.2020 at 12h00 by @Martin</i></p>
                <p style="text-align: justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s It was popularised...</p>
                <a href="#" class="btn btn-primary" style="background-color: #111e84;">Read more...</a>
        </div>
        <div class="row" style="border: solid 1px black; padding: 20px 30px 20px 30px; margin-bottom: 10px">
            <h5>A wonderful party at ISEP</h5>
            <p style="font-size: 12px; margin-left: 20px"><i>Published on 11.04.2020 at 12h00 by @Martin</i></p>
            <p style="text-align: justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s It was popularised...</p>
            <a href="#" class="btn btn-primary" style="background-color: #111e84;">Read more...</a>
        </div>

    </div>

</div>

</body>


<!-- INCLUDE FOOTER -->
<%@ include file="/globalFooterLogged.html" %>
<!-- DO NOT WRITE HERE -->
