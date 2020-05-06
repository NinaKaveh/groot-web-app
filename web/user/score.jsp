<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scores</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
</head>

<body>
<%@ include file="/user/globalHeaderLogged.jsp" %>

<div class="row">
    <div class="col-4">
        <div class="formtable" style="margin-top: 5%">
            <label>My score:</label>
            <span class="badge badge-success" style="font-size: 1em">${user.getScore()} points</span>
        </div>
        <br><br><br><br>
        <div style="margin-left: 3%">
            <h3>Search a user to get his/her score</h3>
            <label>Enter a pseudo</label>
            <input type="text">
        </div>

    </div>

    <div class="col-7" style="margin-top: 10px; margin-right: 5px; margin-left: 5px">
        <table class="table table-hover table-bordered">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Pseudo</th>
                <th scope="col">Score</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">6</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">7</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">8</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">9</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            <tr>
                <th scope="row">10</th>
                <td>name</td>
                <td>xxx</td>
            </tr>
            </tbody>
        </table>

    </div>


</div>


<%@ include file="/user/globalFooterLogged.html" %>
</body>
</html>
