<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation Page</title>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="/resources/css/ct-paper.css">
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
                    <a href="/aboutus" target="_blank"
                       class="btn btn-danger btn-fill">Meet The Team</a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-->
</nav>

<p>You've registered as a new user with us! Thanks!</p>
<p>Click <a href="/">here</a> to start searching for rides near you. </p>


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
