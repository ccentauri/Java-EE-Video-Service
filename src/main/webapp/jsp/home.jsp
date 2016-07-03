<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Custom HTML5 Video Player</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.blue-purple.min.css"/>
    <link
            href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,500,500italic,700,700italic'
            rel='stylesheet' type='text/css'>
    <script src="https://storage.googleapis.com/code.getmdl.io/1.1.3/material.min.js"></script>
</head>
<body>

<a href="https://oauth.vk.com/authorize?client_id=5084652&scope=friends,video,offline,email&redirect_uri=http://localhost:8080/login/vk&response_type=code&v=5.52">
    <div class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        VK
    </div>
</a>

<a href="${pageContext.request.contextPath}/logout">
    <div class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        Logout
    </div>
</a>

<%
    HttpSession httpSession = request.getSession();
    if (session.getAttribute("name") != null && session.getAttribute("surname") != null) {
%>
<h5>
    Hi, <%=httpSession.getAttribute("name")%> <%=httpSession.getAttribute("surname")%>
</h5>
<%
    }
%>

</body>
</html>