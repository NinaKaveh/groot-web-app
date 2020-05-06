<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us | Groot</title>
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
        <h1>Contact us!</h1>
        <h3>We are here to answer you</h3>
        <p>Please fullfill the bellow form to contact us, we will answer you as soon as possible.</p>
    </section>
</div>

<div class="row">
    <div class="col">
    </div>
    <div class="col-6">
        <form>
            <div class="form-group">
                <label for="exampleFormControlInput1">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@isep.fr">
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect1">Student or teacher ?</label>
                <select class="form-control" id="exampleFormControlSelect1">
                    <option>Student</option>
                    <option>Teacher</option>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Message</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">I agree to the application's terms of use. <a href="termsofuse.jsp">Click here to read them.</a></label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <div class="col">
    </div>
</div>

</body>


<!-- INCLUDE FOOTER -->
<%@ include file="/globalFooter.html" %>
<!-- DO NOT WRITE HERE -->
