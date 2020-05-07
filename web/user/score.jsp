<%@ page import="model.Score" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scores</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <link rel="icon" type="image/png" href="../img/logo-groot.png">

</head>

<body>
<%@ include file="/user/globalHeaderLogged.jsp" %>
<% Score.createPodium();%>
<%Set<Map.Entry<String, Integer>> entrySet = Score.PODIUM.entrySet();%>

<div id="score" class="row" style="margin-left:3%; margin-top:3%;">
    <h1>This is the podium page !</h1>
    <h2>You will find here the top 10 most active users of the Groot platform.</h2>
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
            <%
                int increment = 1;
                for (Map.Entry<String, Integer> rank : entrySet) {
            %>
                <th scope="row"><%=increment%></th>
                <td><%=rank.getKey()%></td>
                <td><%=rank.getValue()%></td>
            </tr>
            <% increment+=1; } %>
            </tbody>
        </table>

    </div>


</div>


<%@ include file="/user/globalFooterLogged.html" %>
</body>
</html>
