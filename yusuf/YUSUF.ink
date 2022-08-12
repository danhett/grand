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
//          OUTSIDE
//----------------------------
== outside == 
{setCurrentLocation("outside")}
{ outside == 1: -> outside_first }
{ outside > 1: -> outside_second }

== outside_first
Yusuf is outside. 

    + [Enter the hotel.] -> entrance
    + [Look at the garden.] -> garden
        

== outside_second ==
Yusuf returns to the outside bit.
    
    + [Head into the hotel.] -> entrance
    + [Explore the perimiter gardens.] -> garden



//----------------------------
//          ENTRANCE
//----------------------------
== entrance == 
{setCurrentLocation("entrance")}
{ entrance == 1: -> entrance_first }
{ entrance > 1: -> entrance_second }

== entrance_first
Yusuf is in the entrance.
+ [Go through the revolving door.] -> lobby
+ [Go back outside.] -> outside

== entrance_second
Yusuf is in the entrance.

+ [Go through the revolving door.] -> lobby
+ [Go back outside.] -> outside



//----------------------------
//          GARDEN
//----------------------------
== garden == 
{setCurrentLocation("garden")}
{ garden == 1: -> garden_first }
{ garden > 1: -> garden_second }

== garden_first ==
Yusuf is in the garden.  
+ [Leave the garden.] -> outside

== garden_second ==
Yusuf is in the garden again.
+ [Walk back to the front of the hotel.] -> outside


//----------------------------
//           LOBBY
//----------------------------
== lobby == 
{setCurrentLocation("lobby")}
{ lobby == 1: -> lobby_first }
{ lobby > 1: -> lobby_second }

== lobby_first ==
Yusuf is in the lobby.

+ [Approach the reception desk.] -> desk
+ [Go into the ballroom.] -> ballroom
+ [Take the elevator up.] -> elevator

== lobby_second ==
Yusuf is in the lobby again.

+ [Approach the reception desk.] -> desk
+ [Go into the ballroom.] -> ballroom
+ [Take the elevator up.] -> elevator



//----------------------------
//           DESK
//----------------------------
== desk == 
{setCurrentLocation("desk")}
{ desk == 1: -> desk_first }
{ desk > 1: -> desk_second }

== desk_first ==
Yusuf approaches the desk.

+ [Return to the lobby.] -> lobby

== desk_second ==
Yusuf approaches the desk again.

+ [Leave.] -> lobby



//----------------------------
//           BALLROOM
//----------------------------
== ballroom == 
{setCurrentLocation("ballroom")}
{ ballroom == 1: -> ballroom_first }
{ ballroom > 1: -> ballroom_second }

== ballroom_first == 
PLACEHOLDER. You enter the ballroom of the hotel. There's nothing here yet.
+ [Leave.] -> lobby

== ballroom_second == 
PLACEHOLDER. You enter the ballroom of the hotel. There's nothing here yet.
+ [Leave.] -> lobby



//----------------------------
//           ELEVATOR
//----------------------------
== elevator == 
{setCurrentLocation("elevator")}
{ elevator == 1: -> elevator_first }
{ elevator > 1: -> elevator_second }

== elevator_first ==
PLACEHOLDER. You take the lift up. Ding.
+ [Enter the corridor.] -> corridor

== elevator_second ==
PLACEHOLDER. You take the lift up. Ding.
+ [Enter the corridor.] -> corridor



//----------------------------
//           CORRIDOR
//----------------------------
== corridor == 
{setCurrentLocation("corridor")}
{ corridor == 1: -> corridor_first }
{ corridor > 1: -> corridor_second }

== corridor_first ==
PLACEHOLDER. You walk down the corridor.
+ [Enter your room.] -> room

== corridor_second ==
PLACEHOLDER. You walk down the corridor.
+ [Enter your room.] -> room



//----------------------------
//           ROOM
//----------------------------
== room == 
{setCurrentLocation("room")}
{ room == 1: -> room_first }
{ room > 1: -> room_second }

== room_first == 
PLACEHOLDER. You enter your room.
+ [Look out of the window.] -> window

== room_second == 
PLACEHOLDER. You enter your room.
+ [Look out of the window.] -> window



//----------------------------
//           WINDOW
//----------------------------
== window == 
{setCurrentLocation("window")}
{ window == 1: -> window_first }
{ window > 1: -> window_second }

== window_first == 
PLACEHOLDER. You look out of the window.
+ [Stop looking.] -> room
+ [Finish this test.] -> END

== window_second == 
PLACEHOLDER. You look out of the window.
+ [Stop looking.] -> room
+ [Finish this test.] -> END

