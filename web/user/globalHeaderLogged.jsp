<%@ page import="model.Users" %>
<%
    // If there is no session
    session = request.getSession();
    if (session.getAttribute("user") == null){
        session.setAttribute("message", "You are not logged in. Connect to your account.");
        response.sendRedirect("../login.jsp");
    }
    else {
        Users user = (Users) session.getAttribute("user");
    }

%>
<div id="header">
    <img id="grootLogo" src="/groot_web_app_war_exploded/img/logo-groot.png" alt="logo" width="51"/>
    <img id="isepLogo" src="/groot_web_app_war_exploded/img/logo-isep.png" alt="logo" width="60"/>

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #111e84; margin-top: 30px">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
                aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active" style="margin-right:10px">
                    <a class="nav-link" href="/groot_web_app_war_exploded/user/welcome.jsp">My Homepage</a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="/groot_web_app_war_exploded/user/profile.jsp">Profile</a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="/groot_web_app_war_exploded/user/allarticles.jsp">Articles</a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="/groot_web_app_war_exploded/user/allevents.jsp">Events</a>
                </li>
                <li class="nav-item" style="margin-right:10px">
                    <a class="nav-link" href="/groot_web_app_war_exploded/user/score.jsp">Scores</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/LogoutServlet"
                  method="post">
                <button type="submit" class="btn btn-light">Logout</button>
            </form>
        </div>
    </nav>


</div>
