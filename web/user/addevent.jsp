<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add an event | Groot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
</head>

<!-- INCLUDE HEADER -->
<header>
    <%@ include file="/user/globalHeaderLogged.jsp" %>
</header>
<!-- END OF INCLUDE HEADER -->

<body>


<div class="row" style="margin-top:40px;margin-left: 10px">
    <div class="col-11" style="padding: 0px 10px 0px 36px;">
        <h2 style="margin-bottom: 20px;">Propose an event</h2>
        <div class="row">
            <div class="col">
            </div>
            <div class="col-8">
                <form method="post" name="AddEventForm" action="${pageContext.request.contextPath}/AddEventServlet">
                    <p style="color: green;">${message}</p>
                    <div id="error"></div>
                    <div class="form-group">
                        <label for="input1">Title</label>
                        <input type="text" class="form-control" id="input1" name="title">
                    </div>
                    <div class="form-group">
                        <label for="input2">Date start</label>
                        <input type="datetime-local" class="form-control" name="datestartform" id="input2" >
                    </div>
                    <div class="form-group">
                        <label for="input5">Date end</label>
                        <input type="datetime-local" class="form-control" name="dateendform" id="input5" >
                    </div>
                    <div class="form-group">
                        <label for="input3">Description</label>
                        <textarea class="form-control" id="input3" name="content" rows="5"></textarea>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="input4" required>
                        <label class="form-check-label"  for="input4" name="checkBox">I agree to the application's terms of use. <a style="color:#333" href="../termsofuse.jsp">Click here to read them.</a></label>
                    </div>
                    <button type="submit" class="btn btn-primary" style="margin-top: 10px;">Submit</button>
                </form>


            </div>
            <div class="col">
            </div>
        </div>

    </div>
</div>

</body>


<!-- INCLUDE FOOTER -->
<%@ include file="/user/globalFooterLogged.html" %>
<!-- DO NOT WRITE HERE -->
