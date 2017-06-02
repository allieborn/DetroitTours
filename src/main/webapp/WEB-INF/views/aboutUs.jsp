<%--
  Created by IntelliJ IDEA.
  User: nickk
  Date: 5/26/2017
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meet the Creators</title>

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="/resources/css/ct-paper.css">

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">

    <style>
        div.show-image {
            position: relative;
            float: left;
            margin: 5px;
        }

        div.show-image1 {
            position: relative;
            float: left;
            margin: 5px;
        }

        div.show-image2 {
            position: relative;
            float: left;
            margin: 5px;
        }

        div.show-image3 {
            position: relative;
            float: left;
            margin: 5px;
        }

        div.show-image:hover img {
            opacity: 0.5;
        }

        div.show-image1:hover img {
            opacity: 0.5;
        }

        div.show-image2:hover img {
            opacity: 0.5;
        }

        div.show-image3:hover img {
            opacity: 0.5;
        }

        div.show-image:hover input {
            display: block;
        }

        div.show-image1:hover input {
            display: block;
        }

        div.show-image2:hover input {
            display: block;
        }

        div.show-image3:hover input {
            display: block;
        }

        div.show-image input {
            position: absolute;
            display: none;
        }

        div.show-image1 input {
            position: absolute;
            display: none;
        }

        div.show-image2 input {
            position: absolute;
            display: none;
        }

        div.show-image3 input {
            position: absolute;
            display: none;
        }

        div.show-image input.linkedin {
            top: 0;
            left: 0;
        }

        div.show-image1 input.linkedin {
            top: 0;
            left: 0;
        }

        div.show-image2 input.linkedin {
            top: 0;
            left: 0;
        }

        div.show-image3 input.linkedin {
            top: 0;
            left: 0;
        }

        div.show-image input.github {
            top: 0;
            left: 79%;
        }

        div.show-image1 input.github {
            top: 0;
            left: 79%;
        }

        div.show-image2 input.github {
            top: 0;
            left: 79%;
        }

        div.show-image3 input.github {
            top: 0;
            left: 79%;
        }
    </style>
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
        <div align="center">
            <h1>Meet The Creators</h1> <br>
        </div>

        <div class="col-sm-6">
            <h6>Stephanie Broadwell</h6>
            <div class="show-image">
                <img src="https://www.grandcircus.co/wp-content/uploads/2017/05/Stephanie-Broadwell.jpg"/>
                <input class="linkedin" type="button" value="LinkedIn"
                       onclick="location.href='https://www.linkedin.com/in/stephanie-broadwell-15a14b6b/';"/>
                <input class="github" type="button" value="GitHub"
                       onclick="location.href='https://github.com/broadwells';"/>
            </div>
        </div>

        <div class="col-sm-6">
            <h6>Allie Born</h6>
            <div class="show-image1">
                <img src="https://www.grandcircus.co/wp-content/uploads/2017/05/Allie-Born.jpg"/>
                <input class="linkedin" type="button" value="LinkedIn"
                       onclick="location.href='https://www.linkedin.com/in/alexandra-born/';"/>
                <input class="github" type="button" value="GitHub"
                       onclick="location.href='https://github.com/allieborn/';"/>
            </div>
        </div>
        <br>
        <div class="col-sm-6">
            <h6>Peter Setiawan</h6>
            <div class="show-image2">
                <img src="https://www.grandcircus.co/wp-content/uploads/2017/05/Peter-Setiawan.jpg"/>
                <input class="linkedin" type="button" value="LinkedIn"
                       onclick="location.href='https://www.linkedin.com/in/psetiawan/';"/>
                <input class="github" type="button" value="GitHub"
                       onclick="location.href='https://github.com/peterpreneur';"/>
            </div>
        </div>
        <br>
        <div class="col-sm-6">
            <h6>Nick Katsarelas</h6>
            <div class="show-image3">
                <img src="https://www.grandcircus.co/wp-content/uploads/2017/05/Nick-Katsarelas.jpg"/>
                <input class="linkedin" type="button" value="LinkedIn"
                       onclick="location.href='https://www.linkedin.com/in/nick-katsarelas-11790a134/';"/>
                <input class="github" type="button" value="GitHub"
                       onclick="location.href='https://github.com/nickkatz22';"/>
            </div>
        </div>
    </div>
</div>


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
