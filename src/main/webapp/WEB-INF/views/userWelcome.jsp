<%--
  Created by IntelliJ IDEA.
  User: nickk
  Date: 5/25/2017
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Address Form</title>
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
                    <div class="brand">
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
    <div class="demo-header demo-header-image">
        <div class="motto">
            <h1 class="title-uppercase">LUBER</h1>
            <h3>Compare Uber and Lyft at once!</h3>
        </div>
    </div>
    <div class="main">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 ">

                        <form name="form" method="post" action="/ridecompare" onsubmit="return validateForm()">
                            <div class="form-group">
                                <h3 class="">Please Enter Current Location</h3><br>


                                <div id="locationField1">
                                    <input id="autocomplete" class="form-control" name="pickup"
                                           placeholder="Pick Up Address"
                                           onFocus="geolocate()" type="text"
                                           size="45"/>
                                    <br>
                                    <button class="btn" onclick="historyCheck()">history</button>
                                </div>


                                <input type="hidden" class="field" id="street_number" name="streetNum" disabled="true"/>
                                <input type="hidden" class="field" id="route" name="routee" disabled="true"/>
                                <input type="hidden" class="field" id="locality" name="local" disabled="true"/>
                                <input type="hidden" class="field" id="administrative_area_level_1" name="nope"
                                       disabled="true"/>
                                <input type="hidden" class="field" id="postal_code" name="postal" disabled="true"/>
                                <input type="hidden" class="field" name="count" id="country" disabled="true"/>
                            </div>
                            <div class="form-group">
                                <h3 class="">Please Enter Destination</h3><br>


                                <div id="locationField2">
                                    <input id="autocomplete1" class="form-control" placeholder="Drop Off Address"
                                           onFocus="geolocate()" type="text" size="45"/>
                                    <br>
                                    <button class="btn" onclick="historyCheck()">history</button>
                                </div>


                                <input type="hidden" class="field" id="street_number1" name="strtN" disabled="true"/>
                                <input type="hidden" class="field" id="route1" name="rou" disabled="true"/>
                                <input type="hidden" class="field" id="locality1" name="loca" disabled="true"/>
                                <input type="hidden" class="field" id="administrative_area_level_11" name="yep"
                                       disabled="true"/></td>
                                <input type="hidden" class="field" id="postal_code1" name="posta" disabled="true"/>
                                <input type="hidden" class="field" name="userCountry" id="country1" disabled="true"/>
                            </div>


                            <div class="form-group">
                                <h4>Number of Riders</h4>
                                <label class="radio">
                                    <input type="radio" name="capSeat" data-toggle="radio" value="1">
                                    <i></i>4 Riders
                                </label>
                                <label class="radio">
                                    <input type="radio" name="capSeat" data-toggle="radio" value="2">
                                    <i></i>6 Riders
                                </label>
                                <label class="radio">
                                    <input type="radio" name="capSeat" data-toggle="radio" value="3" checked>
                                    <i></i>All Types
                                </label>


                                <button class="btn" type="submit">Find A Ride</button>
                            </div>


                        </form>
                    </div>
                </div>
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
<script>
    // This example displays an address form, using the autocomplete feature
    // of the Google Places API to help users fill in the information.

    // This example requires the Places library. Include the libraries=places
    // parameter when you first load the API. For example:
    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

    var placeSearch, autocomplete, autocomplete2;
    var componentForm = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        administrative_area_level_1: 'short_name',
        country: 'long_name',
        postal_code: 'short_name'
    };
    var componentForm2 = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        administrative_area_level_1: 'short_name',
        country: 'long_name',
        postal_code: 'short_name'
    };

    function initAutocomplete() {
        // Create the autocomplete object
        autocomplete = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
            {types: ['geocode']['establishment']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);

        autocomplete2 = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(document.getElementById('autocomplete1')),
            {types: ['geocode']['establishment']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete2.addListener('place_changed', fillInAddress2);
    }

    function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();

        for (var component in componentForm) {
            document.getElementById(component).value = '';
            document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
            var addressType = place.address_components[i].types[0];
            if (componentForm[addressType]) {
                var val = place.address_components[i][componentForm[addressType]];
                document.getElementById(addressType).value = val;
            }
        }
    }
    function fillInAddress2() {

        // Get the place details from the autocomplete object.
        var place = autocomplete2.getPlace();
//        console.log(place);
        for (var component in componentForm2) {
//            console.log(component);
            document.getElementById(component + "1").value = '';
            document.getElementById(component + "1").disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
            var addressType = place.address_components[i].types[0];
//            console.log(addressType);
            if (componentForm2[addressType]) {
                var val = place.address_components[i][componentForm2[addressType]];
                document.getElementById(addressType + "1").value = val;
            }
        }
    }

    // Bias the autocomplete object to the user's geographical location,
    // as supplied by the browser's 'navigator.geolocation' object.
    function geolocate() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var geolocation = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                var circle = new google.maps.Circle({
                    center: geolocation,
                    radius: position.coords.accuracy
                });
                autocomplete.setBounds(circle.getBounds());
                autocomplete2.setBounds(circle.getBounds());
            });
        }
    }

    function validateForm() {
        var fromStreetNum = document.forms["form"]["streetNum"].value;
        var toStreetNum = document.forms["form"]["strtN"].value;
        var fromStreetName = document.forms["form"]["routee"].value;
        var toStreetName = document.forms["form"]["rou"].value;
        var fromCity = document.forms["form"]["local"].value;
        var toCity = document.forms["form"]["loca"].value;
        var fromState = document.forms["form"]["administrative_area_level_1"].value;
        var toState = document.forms["form"]["administrative_area_level_11"].value;

        if (autocomplete != ({types: ['establishment']}) || (autocomplete2 != ({types: ['establishment']}))) {

            if (fromStreetNum == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
            if (toStreetNum == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
            if (fromStreetName == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
            if (toStreetName == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
            if (fromCity == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
            if (toCity == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
            if (fromState == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
            if (toState == "") {
                alert("Looks like you haven't entered a valid address...");
                return false;
            }
        }
        return true;
    }

    //check cookie
    function historyCheck() {
        //var ca = document.cookie;
        console.log(getCookie('userid'));

        var testUser = getCookie('userid');
        if (testUser != "") {
            //gotoLogin();
            gotoFave();
        } else {
            gotoLogin();
        }
    }

    //parse cookies
    function getCookie(cname) {
        var name = cname + "=";
        var decodedCookie = decodeURIComponent(document.cookie);
        var ca = decodedCookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    //goto Favorite page
    function gotoFave() {
        window.open("/favorites", "MsgWindow", "toolbar=yes, scrollbar=yes,resizable=yes,top=500,left=500,width=500,height=500");
    }

    //goto Login page
    function gotoLogin() {
        window.open("/login", "MsgWindow", "toolbar=yes, scrollbar=yes,resizable=yes,top=500,left=500,width=500,height=500");
    }

</script>
<br>


<!--script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDj_Zhpzv6SH4i-uPWy10gXtOpXfEZYw8&libraries=places&callback=initAutocomplete"
        async defer></script-->
<script src="https://maps.googleapis.com/maps/api/js?key=${GoogleAPIKey}&libraries=places&callback=initAutocomplete"
        async defer>
</script>
</body>
</html>
