<%
    String id = null;
    String pseudo = null;
    String email = null;
    String score = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("id")) id = cookie.getValue();
            if (cookie.getName().equals("pseudo")) pseudo = cookie.getValue();
            if (cookie.getName().equals("mail")) email = cookie.getValue();
            if (cookie.getName().equals("score")) score = cookie.getValue();
        }
    }
%>
<div id="header">
    <img id="grootLogo" src="../img/logo-groot.png" alt="logo" width="51"/>
    <img id="isepLogo" src="../img/logo-isep.png" alt="logo" width="60"/>

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #111e84; margin-top: 30px">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
                aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active" style="margin-right:10px">
                    <a class="nav-link" href="../welcome.jsp">My Homepage <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="../profile.jsp">Profile</a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="allarticles.jsp">Articles</a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="allevents.jsp">Events</a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="../score.jsp">Scores</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" action="/LogoutServlet" method="post">
                <button type="submit" class="btn btn-light">Logout</button>
            </form>
        </div>
    </nav>


</div>
