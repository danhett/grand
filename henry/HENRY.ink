-> main

//----------------------------
// External functions
//----------------------------
EXTERNAL getCurrentLocation()
=== function getCurrentLocation() ===
~ return "outside"

EXTERNAL setCurrentLocation(loc)
=== function setCurrentLocation(location) ===
~ return "outside"


//----------------------------
// Entry point and checks
//----------------------------
== main ==
{ 
    - getCurrentLocation() == "outside":    -> outside
    - getCurrentLocation() == "garden":     -> garden
    - getCurrentLocation() == "entrance":   -> entrance
    - getCurrentLocation() == "lobby":      -> lobby
    - getCurrentLocation() == "desk":       -> desk
    - getCurrentLocation() == "ballroom":   -> ballroom
    - getCurrentLocation() == "elevator":   -> elevator
    - getCurrentLocation() == "corridor":   -> corridor
    - getCurrentLocation() == "room":       -> room
    - getCurrentLocation() == "window":     -> window
    - else: "This location doesn't exist: " + {getCurrentLocation()} -> END
}


//----------------------------
// Story sections
//----------------------------
== outside == 
{setCurrentLocation("outside")}
You are standing outside the hotel. 
+ [Approach the entrance] -> entrance
+ [Walk around the hotel] -> garden

== garden == 
{setCurrentLocation("garden")}
You're standing in the hotel gardens. 
+ [Go through the door into the lobby.] -> lobby
+ [Walk to the front of the hotel.] -> outside

== entrance == 
{setCurrentLocation("entrance")}
You're at the entrance to the hotel.
+ [Go inside.] -> lobby

== lobby == 
{setCurrentLocation("lobby")}
You're standing in the lobby of the hotel. 
+ [Approach the reception desk.] -> desk
+ [Go into the ballroom.] -> ballroom
+ [Take the elevator up.] -> elevator

== desk == 
{setCurrentLocation("desk")}
You stand at the reception desk. There's nobody here.
+ [Leave.] -> lobby

== ballroom == 
{setCurrentLocation("ballroom")}
You enter the ballroom of the hotel. There's nothing here yet.
+ [Leave.] -> lobby

== elevator == 
{setCurrentLocation("elevator")}
You take the lift up. Ding.
+ [Enter the corridor.] -> corridor

== corridor == 
{setCurrentLocation("corridor")}
You walk down the corridor.
+ [Enter your room.] -> room

== room == 
{setCurrentLocation("room")}
You enter your room.
+ [Look out of the window.] -> window

== window == 
{setCurrentLocation("window")}
You look out of the window.
+ [Stop looking.] -> room
+ [Finish this test.] -> END

