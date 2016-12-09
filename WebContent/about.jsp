<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%-- Needs Header --%>
<%@ include file="included/header.jsp" %>
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Medibase</title>
</head>
<body>
	<h1>About Medibase</h1>
	<br>
	<p>
		Medibase is an online Doctor-Patient database and rating system.<br/>
		Search for your favourite doctors and write nice things about them,
		and give them a rating.<br/><br/>
		

    <title>Geolocation</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>

    <div id="map"></div>
    <script>
      // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.

      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 6
        });
        var infoWindow = new google.maps.InfoWindow({map: map});

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDB6YFa-UoxIJ03L9ZO8pAxvYEAIxFmHlg&callback=initMap">
    </script>

<br/>
		Contact Info: <br/>
		Mitchell Duncan<br/>
		dunc0117@algonquinlive.com<br/>
		040667647<br/><br/>

		Lukas Wildeman<br/> 
		Marc Chaine<br/>
		<br/>
		<br/>
		<br/> 
		Luke Adams<br/>

	</p>
</body>

</html>