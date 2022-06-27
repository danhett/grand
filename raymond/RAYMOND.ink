-> main

EXTERNAL getCurrentLocation()
EXTERNAL setCurrentLocation(loc)

=== function getCurrentLocation() ===
~ return "TEST IN BROWSER"

=== function setCurrentLocation(location) ===
~ return "TEST IN BROWSER"

== main ==
Raymond's current location is: {getCurrentLocation()}

 + [Go to the garden] -> garden
 + [Go to the bedroom] -> bedroom

== garden == 
{setCurrentLocation("GARDEN")}
Raymond's current location is: {getCurrentLocation()}
-> END

== bedroom == 
{setCurrentLocation("BEDROOM")}
Raymond's current location is: {getCurrentLocation()}
-> END

