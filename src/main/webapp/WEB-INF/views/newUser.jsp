<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New User</title>

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="/resources/css/ct-paper.css">

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
</head>
<body>
<nav class="navbar navbar-ct-transparent" role="navigation-demo" id="demo-navbar">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/">
                <div class="logo-container">
                    <div class="brand-other">
                        LUBER
                    </div>
                </div>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navigation-example-2">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/login" class="btn btn-danger btn-simple">Log In</a>
                </li>
                <li>
                    <a href="/newUser" class="btn btn-danger btn-simple">Register</a>
                </li>
                <li>
                    <a href="/aboutus" class="btn btn-danger btn-fill">Meet The Team</a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-->
</nav>
<div class="wrapper">
    <div class="container">
        <h3>Register</h3>

        <form method="POST" action="/successfullyRegistered" <%--onsubmit="return validateForm()"--%>>

            <input type="text" name="userName" placeholder="Username">
            <br>
            <input type="text" name="email" placeholder="Email">
            <br>
            <input type="password" name="password" placeholder="Password">
            <br>
            <input type="text" name="homeAddress" placeholder="Save Home Address">
            <br>
            <br>
            <button class="btn" type="submit">Register</button>

        </form>
    </div>
</div>

<%--<script>--%>

    <%--function validateForm() {--%>
        <%--var name = document.forms["customerInfo"]["name"].value;--%>
        <%--var email = document.forms["customerInfo"]["email"].value;--%>

        <%--if (name == ""){--%>
            <%--alert ("You must enter your name in order to register.");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (email == ""){--%>
            <%--alert ("You must enter an email address.");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (!email.includes('@')){--%>
            <%--alert ("hmmm...looks like you didn't enter a valid email address.");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (name.length < 2 || email.length < 2){--%>
            <%--alert ("Input must be longer than 2 characters");--%>
            <%--return false;--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>

<script src="/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="/resources/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>

<script src="/resources/js/bootstrap.js" type="text/javascript"></script>

<!--  Plugins -->
<script src="/resources/js/ct-paper-checkbox.js"></script>
<script src="/resources/js/ct-paper-radio.js"></script>
<script src="/resources/js/bootstrap-select.js"></script>
<script src="/resources/js/bootstrap-datepicker.js"></script>

<script src="/resources/js/ct-paper.js"></script>

</body>
</html>
