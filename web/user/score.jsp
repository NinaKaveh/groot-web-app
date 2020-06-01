<%@ page import="model.Score" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scores</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <link rel="icon" type="image/png" href="../img/logo-groot.png">

</head>
<header>
    <%@ include file="/user/globalHeaderLogged.jsp" %>
</header>
<body>
<% Score.createPodium();%>
<%Set<Map.Entry<String, Integer>> entrySet = Score.PODIUM.entrySet();%>

<div id="score" class="row" style="margin-left:3%; margin-top:3%;">
    <h1>This is the podium page !</h1>
    <h2>You will find here the top 10 most active users of the Groot platform.</h2>
    <div class="col-4">
        <div class='row formtable' style="border: solid 1px black; margin-left: 2%">
            <label>My score:</label>
            <span class="badge badge-success" style="font-size: 1em">${user.getScore()} points</span>
        </div>
        <br><br><br><br>
        <div class='row formtable' style="border: solid 1px black; margin-left: 2%">
            <form id="searchForm" name="searchForm" class="input-group mb-3" method="POST"
                  action="${pageContext.request.contextPath}/ScoreServlet">
                <h4>Search a user to get his/her score</h4>
                <input type="text" class="form-control" placeholder="Enter a pseudo" aria-label="Recipient's username"
                       aria-describedby="basic-addon2" name="pseudo">
                <input class="btn btn-outline-secondary" type="submit" value="Search">
            </form>
        </div>
        <div class='row' style="margin-left: 2%">
            <h6>Pseudo : ${searchPseudo}</h6>
        </div>

        <div class='row' style="margin-left: 2%">
            <h6>Score : ${searchScore}</h6>
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
                <th scope="row"><%=increment%>
                </th>
                <td><%=rank.getKey()%>
                </td>
                <td><%=rank.getValue()%>
                </td>
            </tr>
            <% increment += 1;
            } %>
            </tbody>
        </table>

    </div>


</div>

</body>
<footer>
    <%@ include file="/user/globalFooterLogged.html" %>
</footer>
</html>
