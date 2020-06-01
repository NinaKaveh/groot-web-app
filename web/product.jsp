<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Groot - Our Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
</head>
<header>
    <%@ include file="/globalHeader.html" %>
</header>
<body>

<div class="row">
    <section id="welcome">
        <h1>Our Product</h1>
    </section>
</div>

<div class="row">
    <div class="col-2" style="margin-left: 5%; margin-top: 15px">
        <img src="img/logo-isep.png" alt="groot logo" width="130">
    </div>
    <div class="col-8" align="">
        <p>Groot is a platform imagined and developed by students of the digital engineering, ISEP. It aims to raise
            awareness on ecology to the others students and the staff of the school. They will be able to follow
            environmental news and play a role, at their own level, in a context of ecological transition.</p>
        <p>The platform will guarantee a permanent reliability with information coming from members of the school, and
            will be controlled by an administrator.</p>
        <p>The aim is that the platform will be entertaining, by letting members contribute to the flow of information
            themselves, while challenging its members with a system of trophies for each relevant publication or
            participation.</p>
    </div>
</div>

</body>
<footer>
    <%@ include file="/globalFooter.html" %>
</footer>
</html>
