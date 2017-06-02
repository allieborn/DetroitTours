<%--
  Created by IntelliJ IDEA.
  User: PAS8
  Date: 5/31/2017
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Login Fail</title>

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

<p>Hmmm...looks like that wasn't the correct password...</p>
<p>Want to try again? Click <a href="/login">here</a>  </p>
<p>Need to create a new account? Click <a href="/newUser">here</a>  </p>

</table>

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
