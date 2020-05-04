<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submit an article | Groot</title>
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
        <h3 style="margin-bottom: 20px;">Submit an article</h3>
        <div class="row">
            <div class="col">
            </div>
            <div class="col-8">


                <form method="post" name="AddArticleForm" action="${pageContext.request.contextPath}/AddArticleServlet">
                    <p style="color: green;">${message}</p>
                    <div id="error"></div>
                    <div class="form-group">
                        <label for="input1">Title</label>
                        <input type="text" class="form-control" id="input1" name="title">
                    </div>
                    <div class="form-group">
                        <label for="input2">Content</label>
                        <textarea class="form-control" id="input2" name="content" rows="10"></textarea>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="input3" required>
                        <label class="form-check-label"  for="input3" name="checkBox">I agree to the application's terms of use. <a style="color:#333" href="termsofuse.jsp">Click here to read them.</a></label>
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
<%@ include file="/globalFooterLogged.html" %>
<!-- DO NOT WRITE HERE -->
