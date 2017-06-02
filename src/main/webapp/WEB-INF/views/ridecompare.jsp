<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: broadwells
  Date: 5/8/17
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Compare</title>

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
        <div class="demo-header main-trip-summary">
            <div class="motto">
                <h1 class="title-uppercase">Your Trip</h1>
                <div class="card-block">
                    <p><h6>Pick Up: </h6> ${fromAdd} </p>
                    <p><h6>Drop Off: </h6> ${toAdd} </p>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="container-ride">
                <div class="row">
                    <c:forEach items="${product}" varStatus="loop">
                        <div class="col-sm-6">
                            <div class="card">
                                <div class="card-block">
                                    <h3 class="card-title">UBER</h3>
                                    <p class="card-text"> ${product[loop.index].toString()} <br> No. of Riders: ${capacity}
                                    </p>
                                    <h5 class="card-title" name="price">${price[loop.index].toString()}</h5>
                                    <h5 class="card-title" name="time">Driver is ${time[loop.index].toString()} minutes
                                        away</h5>
                                    <a href="https://m.uber.com/ul/?action=setPickup" action="finishSelection"
                                       class="btn btn-primary" target="_blank">Call Uber</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-block">
                                <h3 class="card-title">LYFT</h3>
                                <p class="card-text">${typeOfLyft} <br> No. of Riders: ${capacity} </p>
                                <h5 class="card-title">${displayPriceMin}-${displayPriceMax}</h5>
                                <h5 class="card-title">Driver is ${driverETA} minutes away</h5>
                                <a href="https://lyft.com/i" class="btn btn-primary" target="_blank">Call Lyft</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
<%--Map Route below--%>
<%--<div id="map">--%>
<%--</div>--%>

<script src="/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="/resources/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>

<script src="/resources/js/bootstrap.js" type="text/javascript"></script>

<!--  Plugins -->
<script src="/resources/js/ct-paper-checkbox.js"></script>
<script src="/resources/js/ct-paper-radio.js"></script>
<script src="/resources/js/bootstrap-select.js"></script>
<script src="/resources/js/bootstrap-datepicker.js"></script>

<script src="/resources/js/ct-paper.js"></script>

<script>
    //initialize map
    function initMap() {
        var mainLoc = {lat: 42.3314, lng: -83.0458};
        var fromLoc = {lat: ${fromLat}, lng: ${fromLng}};
        var endLoc = {lat: ${toLat}, lng: ${toLng}};

        var map = new google.maps.Map(document.getElementById('map'), {zoom: 4, center: mainLoc});
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer({draggable: true, map: map});

        displayRoute(fromLoc, endLoc, directionsService, directionsDisplay);
    }

    //display route
    function displayRoute(origin, destination, service, display) {
        service.route({
            origin: origin,
            destination: destination,
            travelMode: 'DRIVING',
            avoidTolls: false
        }, function (response, status) {
            if (status === 'OK') {
                display.setDirections(response);
            } else {
                alert('Could not display directions due to: ' + status);
            }
        });
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=${GoogleAPIKey}&libraries=places&callback=initMap" async defer>
</script>

</body>
</html>
