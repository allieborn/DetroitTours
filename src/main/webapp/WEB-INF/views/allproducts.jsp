<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: broadwells
  Date: 5/27/17
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Ubers & Lyfts</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">


    <style>
        /* map route style - can be combined with main CSS*/
        #map {
            height: 100%;
            float: left;
            width: 70%;
            height: 100%;
        }
    </style>


</head>
<body>
<div class="card">
    <div class="card-header">
        Your Trip
    </div>
    <div class="card-block">
        <blockquote class="card-blockquote">
            <p><h6>Pick Up: </h6> ${fromAdd} </p>
            <p><h6>Drop Off: </h6> ${toAdd} </p>
        </blockquote>
    </div>
</div>
<div class="card">
    <div class="row">
        <c:forEach items="${uberProd}" varStatus="loop">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-block">
                        <h3 class="card-title">UBER</h3>
                        <p class="card-text"> ${uberProd[loop.index].displayName} <br> No. of Riders:
                                ${uberProd[loop.index].capacity}</p>
                        <h5 class="card-title" name="price">${uberPrice[loop.index].estimate}</h5>
                        <h5 class="card-title" name="time">Driver is ${uberETA[loop.index].toString()} minutes
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
                    <p class="card-text">${displayStandard} <br> No. of Riders: ${riders} </p>
                    <h5 class="card-title">${priceMinStand}-${priceMaxStand}</h5>
                    <h5 class="card-title">Driver is ${standardETA} minutes away</h5>
                    <a href="https://lyft.com/i" class="btn btn-primary" target="_blank" >Call Lyft</a>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-block">
                    <h3 class="card-title">LYFT</h3>
                    <p class="card-text">${displayPlus} <br> No. of Riders: ${rideCap} </p>
                    <h5 class="card-title">${displayPriceMinPlus}-${displayPriceMaxPlus}</h5>
                    <h5 class="card-title">Driver is ${plusETA} minutes away</h5>
                    <a href="https://lyft.com/i" class="btn btn-primary" target="_blank" >Call Lyft</a>
                </div>
            </div>
        </div>
    </div>
</div>
Map Route below
<div id="map"></div>

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
<script src="https://maps.googleapis.com/maps/api/js?key=${GoogleAPIKey}&libraries=places&callback=initAutocomplete" async defer>
</script>

</body>
</html>