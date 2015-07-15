<!-- BEGIN: MAIN -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3&AIzaSyAqLwqqNGYbwn4L5lkTb788E9d-1etrah4&sensor=false"></script>

<script type="text/javascript">
            // When the window has finished loading create our google map below
            google.maps.event.addDomListener(window, 'load', init);
        
            function init() {
                // Basic options for a simple Google Map
                // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
                var mapOptions = {
                    // How zoomed in you want the map to start at (always required)
                    zoom: 11,

                    // The latitude and longitude to center the map (always required)
                    center: new google.maps.LatLng(45.0333531, 38.9945124), // New York

                    // How you would like to style the map. 
                    // This is where you would paste any style found on Snazzy Maps.
                    styles: [{"stylers":[{"saturation":-45},{"lightness":13}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#8fa7b3"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#667780"}]},{"featureType":"road.highway","elementType":"labels.text.fill","stylers":[{"color":"#333333"}]},{"featureType":"road.highway","elementType":"labels.text.stroke","stylers":[{"color":"#8fa7b3"},{"gamma":2}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#a3becc"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"color":"#7a8f99"}]},{"featureType":"road.arterial","elementType":"labels.text.fill","stylers":[{"color":"#555555"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"#a3becc"}]},{"featureType":"road.local","elementType":"geometry.stroke","stylers":[{"color":"#7a8f99"}]},{"featureType":"road.local","elementType":"labels.text.fill","stylers":[{"color":"#555555"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#bbd9e9"}]},{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#525f66"}]},{"featureType":"transit","elementType":"labels.text.stroke","stylers":[{"color":"#bbd9e9"},{"gamma":2}]},{"featureType":"transit.line","elementType":"geometry.fill","stylers":[{"color":"#a3aeb5"}]}]
                };

                // Get the HTML DOM element that will contain your map 
                // We are using a div with id="map" seen below in the <body>
                var mapElement = document.getElementById('map');

                // Create the Google Map using our element and options defined above
                var map = new google.maps.Map(mapElement, mapOptions);

                // Let's also add a marker while we're at it
                var marker = new google.maps.Marker({ 
                    position: new google.maps.LatLng(45.0333531, 38.9945124),
                    map: map,
                    title: 'Яловой Евгений',
                     icon: "images/mapmarker.png"
                    
                });
            }
        </script>

      <div class="container">
        <div class="page-header">
          <h1>Контакты</h1>
        </div>
        <div class="row">
          <div class="col-md-4">
            <address>
              <strong></strong><br>
            Россия, город Краснодар<br>
              <i class="fa fa-phone"></i> +7 (929) 823 - 40 - 91
            </address>
            <address>
              <strong>Евгений Яловой</strong><br>
              <a href="mailto:#">evgeniy@y-ea.ru</a>
            </address>
            <p>
            <div id="map"></div>
            </p>
          </div>

          <div class="col-md-6 col-md-offset-2">
            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
            <!-- BEGIN: FORM -->
            <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" role="form">
              <div class="form-group">
                <label>{PHP.L.Name}:</label>
                {CONTACT_FORM_AUTHOR}
              </div>
              <div class="form-group">
                <label>{PHP.L.Email}:</label>
                {CONTACT_FORM_EMAIL}
              </div>
              <div class="form-group">
                <label>{PHP.L.Subject}:</label>
                {CONTACT_FORM_SUBJECT}
              </div>
              <div class="form-group">
                <label>{PHP.L.Message}:</label>
                {CONTACT_FORM_TEXT}
              </div>
              <!-- BEGIN: EXTRAFLD -->
              <div class="form-group">
                <label>{CONTACT_FORM_EXTRAFLD_TITLE}:</label>
                {CONTACT_FORM_EXTRAFLD}
              </div>
              <!-- END: EXTRAFLD -->
              <!-- BEGIN: CAPTCHA -->
              <div class="form-group">
                <label>{CONTACT_FORM_VERIFY_IMG}</label>
                {CONTACT_FORM_VERIFY}
              </div>
              <!-- END: CAPTCHA -->
              <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
            </form>
            <!-- END: FORM -->
          </div>
        </div>
      </div>

<style type="text/css">
            /* Set a size for our map container, the Google Map will take up 100% of this container */
            #map {
                width: 400px;
                height: 300px;
            }
        </style>
<!-- END: MAIN -->
