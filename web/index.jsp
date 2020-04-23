<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="js/includeHeaderFooter.js"></script>
</head>
<body>
<header>
    <div id="globalHeader">
        <script>addGlobalHeader();</script>
    </div>
</header>

<main>
    <section id="welcome">
        <h1>Welcome on our website!</h1>
        <h3>Meet Ecosphere</h3>
        <p>Ecosphere is a participative platform with which students and employees of ISEP, a digital engineering
            school, will be able to follow environmental news and hence play a role, at their own level, in a context of
            ecological transition.</p>
        <p>Join us by using the buttons right bellow!</p>
    </section>
    <section id="forms">
        <table style="border: darkslategrey solid">
            <tr>
                <td>Want to sign up?</td>
                <td><a style="border: solid" class="button" href="login.jsp">Login</a></td>
            </tr>
            <tr>
                <td>Want to register?</td>
                <td><a style="border: solid" class="button" href="register.jsp">Register</a></td>
            </tr>
        </table>
    </section>
</main>

<footer>
    <div id="globalFooter">
        <script>addGlobalFooter();</script>
    </div>
</footer>
</body>
</html>
