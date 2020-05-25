<%@ page import="model.Score" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page import="services.ArticlesService" %>
<%@ page import="model.Article" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome on your account | Groot</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="../img/logo-groot.png">
</head>


<header>
    <%@ include file="/user/globalHeaderLogged.jsp" %>
</header>
<%
    Score.createPodium();
    Set<Map.Entry<String, Integer>> entrySet = Score.PODIUM.entrySet();
    Users user = (Users) request.getSession().getAttribute("user");
    ArrayList<Article> allArticles = ArticlesService.getInstance().getAll(3,false,user.getId());
%>

<body>

<div class="row">
    <section id="welcome">
        <h1>Hi ${user.getPseudo()}!</h1>
        <h3>Welcome on your homepage</h3>
    </section>
</div>

<div class="row">
    <div class="col-8" style="padding: 0 10px 0 36px;">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">Latests publications</li>
            </ol>
        </nav>

        <div class="row">
                <% out.println(ArticlesService.getInstance().toHtmlString(false));%>

            <div class="col-2">
                <a href="/user/allarticles.jsp" class="btn btn-primary" style="background-color: #111e84;">See more
                    articles...</a>
            </div>
        </div>
    </div>
    <div class="col-4">
        <button type="button" class="btn btn-light" style="background-color:#e0effd; width: 85%">
            My score: <span class="badge badge-success">${user.getScore()} points</span>
        </button>
        <h5 style="margin-top:50px;">Top 3 users:</h5>
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
                        if (increment > 3) break;       // Get only the first 3 users on the podium
                %>
                <th scope="row"><%=increment%>
                </th>
                <td><%=rank.getKey()%>
                </td>
                <td><%=rank.getValue()%>
                </td>
            </tr>
            <%
                    increment += 1;
                }
            %>
            </tbody>
        </table>

    </div>
</div>

</body>

<footer>
    <%@ include file="/user/globalFooterLogged.html" %>
</footer>
</html>
