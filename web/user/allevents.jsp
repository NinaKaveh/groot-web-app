<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All incoming events | Groot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="js/includeHeaderFooter.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
</head>

<!-- INCLUDE HEADER -->
<header>
    <%@ include file="/user/globalHeaderLogged.jsp" %>
</header>
<!-- END OF INCLUDE HEADER -->

<body>

<!-- Content start : intergate iframe for calendar-->
<div class="row" style="margin-top:40px;margin-left: 10px">
    <div class="col-11" style="padding: 0px 10px 0px 36px;">
        <a href="addevent.jsp" class="btn btn-warning" style="float: right" >Propose an event</a>
        <h3 style="margin-bottom: 30px;">All incoming events</h3>

        <iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=2&amp;bgcolor=%237986CB&amp;ctz=Europe%2FParis&amp;src=bTBhY2hrbWk0b2lkYmo4NzY1MWhtNnYyM2dAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%237CB342&amp;mode=WEEK" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>


    </div>

</div>

</body>

<footer>
    <%@ include file="/user/globalFooterLogged.html" %>
</footer>

</html>