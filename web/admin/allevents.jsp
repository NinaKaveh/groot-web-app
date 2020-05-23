<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All events | Groot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
    <script type="text/javascript">
        function refreshPage(){
            if(confirm("Be careful, all data could be lost. Do you still want to refresh?")){
                location.reload();
            }
        }
    </script>
</head>

<!-- INCLUDE HEADER -->
<header>
    <%@ include file="adminHeader.jsp" %>
</header>
<!-- END OF INCLUDE HEADER -->


<body>


<div class="row" style="margin-top:40px;margin-left: 10px">
    <div class="col-11" style="padding: 0px 10px 0px 36px;">
        <a onclick='refreshPage()' class="btn btn-warning" style="float: right" >Refresh this page</a>
        <h3 style="margin-bottom: 30px;">All events on Groot</h3>
        <p style="color: green;">${message}</p>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Event ID</th>
                <th scope="col">Author ID</th>
                <th scope="col">Status</th>
                <th scope="col">Title</th>
                <th scope="col">Start date</th>
                <th scope="col">End date</th>
                <th scope="col">Content</th>
                <th scope="col">ACTION</th>
            </tr>
            </thead>
            <tbody>
                <jsp:include page="/EventsServlet" />
                <c:out value="${message }"></c:out>
            </tbody>
        </table>
    </div>
</div>
</body>

<!-- INCLUDE FOOTER -->
<%@ include file="/user/globalFooterLogged.html" %>
<!-- DO NOT WRITE HERE -->
