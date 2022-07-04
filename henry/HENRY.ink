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
Henry braces himself against the cold, huddling among the other shivering journalists milling around outside the Grand. The photographer is late, and his patience is wearing thin already. Of course, nobody else in the office was available to cover the opening of this place on a bleak Tuesday morning in the cold, and so Henry had found himself boarding a train at an ungodly time of the morning to join the invited press standing in front of the hotel, as the Grand finally throws open it's ornate doors to the public. 

    * [Look around.] ->
    -
    It's a beautiful spot though, that's for sure. Henry looks back up at the imposing building, the clean white lines and ornate art deco shapes constrasting against the looming clouds behind the hotel. The building towers above everything else on the coast here, visible for miles against the coastal landscape and squat tourist strip buildings that meander down the seafront. No expense has been spared here, clearly, and he wonders if this opulence continues inside, and what kinds of people all of this is really for.

    A breathless young man approaches Henry, clutching several bags. He's casually dressed, wearing a faded woolen sweater and scuffed shoes. A heavy-looking camera hangs from a strap around his neck.  

    "Hello, I uh, Henry isn't it? I'm Jack, SO sorry I'm late, the train-" 
    
    * [Hold it.] ->
    -
    Henry stops Jack mid-sentence, holding a hand up. He smiles. "Nice to meet you, Jack. Don't worry about it. Nothing's happening yet."

    Jack looks immediately relieved. "Alright, good... whew." He whistles as he takes in the scale of the building. "Some spot, huh."
    
    It really is some place, he's right. Jack busies himself taking pictures of the hotel exterior, while Henry smokes, and waits. Groups of people are being led inside, a few at a time. It'll be their turn soon, hopefully. Anything to get out of this biting wind. 
    
    * [Henry makes a few notes.] ->
    -
    It'll be a fluff story, like always, but this is the stuff that sells papers. He suspects the hotel has paid a few editors, too, which would explain why he and Jack were sent here so enthusiastically. 
    
    Henry's been on worse jobs. He'd watched the hotel grow and loom over the horizon as the taxi pulled in over the crest of the bay earlier, a brand new centrepoint for the entire seafront. It must have cost millions to build this thing. 
    
    Still musing over the cost of such an endeavour, and indeed the cost of a night's stay here, Henry notices someone beckoning the remaining journlists towards the hotel. 

    + [Enter the hotel.] -> entrance
    + [Find Jack first.] -> garden
        

== outside_second ==
    Henry walks back out to the front of the hotel. The gathered group has dispersed somewhat, presumably touring the opulent building. Jack waits patiently, fiddling with the dial on his camera. He seems like the kind of chap who can do his own thing without much instruction. 
    
    Time is short, though. Perhaps it's time to take a look around. Henry takes one last look up at the glass and marble building exterior, still marveling at the scale of the thing. 
    
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
A smartly-dressed concierge stands at the entrance to the Grand. Behind him, a tall revolving door is in contant motion as visitors stream in and out. Henry can see bellhops and staff members racing around inside, guiding others around the building. 

"Welcome to the Grand, gentlemen!" The man smiles, and shakes Henry firmly by the hand. Jack has his hands full with kit, and gives the man a nod instead. 

* [Henry pulls out his press ID, and shows it to the concierge.] ->
-

The man cheerfully waves him away. "Open house today, chaps, don't worry about that. If you'd like to head inside, there are refreshemnts being served in the ballroom, and guides available to show you our facilities."

Jack thanks the man, and heads inside. Henry makes another note, tips his hat to the man, and takes a last look around the windswept seafront.

+ [Go through the revolving door.] -> lobby
+ [Go back outside.] -> outside

== entrance_second
The concierge is still standing patiently at the golden entryway of The Grand. He nods in recognition and smiles. "Is there anything I can help you with, Sir?"

Henry shakes his head. 

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
Henry follows a pathway around to the side of the hotel building, walking carefully to avoid disturbing the immaculate floral arrangements and grasses that line the outside space. 

He emerges into the main garden, a wide expanse of perfectly-kept lawns mown carefully into light and dark stripes. Around the edge are fruit trees and colourful plants, benches and seating, outdoor tables, and an assortment of ornate marble sculptures and shimmering water features.

* [Henry spots Jack across the lawn.] ->
-
The young photographer is clearly in his element, capturing everything, occasionally swapping between lenses and cameras, paying little attention to the staff and people wandering around him. 

Henry approaches. "Getting what you need?"

"Oh, yeah. For sure." Jack replies. "This place is beautiful, even on an overcast day like this. Did you see the fountain? They said it lights up at night, for parties and things."

"Is that right?" Henry says, jotting another note. "How the other half live, eh."

Jack snorts, and snaps another photo of the lawn. "When's our slot?"

"I'm not sure", Henry says. "Maybe let's just go in, see what we can see."

"Alright."

+ [They leave the garden.] -> outside

== garden_second ==
There are still a lot of people milling around in the pristine gardens of the Grand, but Jack is nowhere to be found. 

Henry imagines what this place would be like in the summer, filled with well-to-do guests enjoying the place in the sunshine. It's idyllic here, carefully constructed but somehow also unspoiled, a playground for the well-off and a postcard image for the rest of us. 

He glances at his wristwatch. Probably time to head inside and check the rest of the place out. 

+ [Walk back to the front of the hotel.] -> outside


//----------------------------
//           LOBBY
//----------------------------
== lobby == 
{setCurrentLocation("lobby")}
{ lobby == 1: -> lobby_first }
{ lobby > 1: -> lobby_second }

== lobby_first ==
You're standing in the lobby of the hotel. 
+ [Approach the reception desk.] -> desk
+ [Go into the ballroom.] -> ballroom
+ [Take the elevator up.] -> elevator

== lobby_second ==
You're standing in the lobby of the hotel. 
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
You stand at the reception desk. There's nobody here.
+ [Leave.] -> lobby

== desk_second ==
You stand at the reception desk. There's nobody here.
+ [Leave.] -> lobby



//----------------------------
//           BALLROOM
//----------------------------
== ballroom == 
{setCurrentLocation("ballroom")}
{ ballroom == 1: -> ballroom_first }
{ ballroom > 1: -> ballroom_second }

== ballroom_first == 
You enter the ballroom of the hotel. There's nothing here yet.
+ [Leave.] -> lobby

== ballroom_second == 
You enter the ballroom of the hotel. There's nothing here yet.
+ [Leave.] -> lobby



//----------------------------
//           ELEVATOR
//----------------------------
== elevator == 
{setCurrentLocation("elevator")}
{ elevator == 1: -> elevator_first }
{ elevator > 1: -> elevator_second }

== elevator_first ==
You take the lift up. Ding.
+ [Enter the corridor.] -> corridor

== elevator_second ==
You take the lift up. Ding.
+ [Enter the corridor.] -> corridor



//----------------------------
//           CORRIDOR
//----------------------------
== corridor == 
{setCurrentLocation("corridor")}
{ corridor == 1: -> corridor_first }
{ corridor > 1: -> corridor_second }

== corridor_first ==
You walk down the corridor.
+ [Enter your room.] -> room

== corridor_second ==
You walk down the corridor.
+ [Enter your room.] -> room



//----------------------------
//           ROOM
//----------------------------
== room == 
{setCurrentLocation("room")}
{ room == 1: -> room_first }
{ room > 1: -> room_second }

== room_first == 
You enter your room.
+ [Look out of the window.] -> window

== room_second == 
You enter your room.
+ [Look out of the window.] -> window



//----------------------------
//           WINDOW
//----------------------------
== window == 
{setCurrentLocation("window")}
{ window == 1: -> window_first }
{ window > 1: -> window_second }

== window_first == 
You look out of the window.
+ [Stop looking.] -> room
+ [Finish this test.] -> END

== window_second == 
You look out of the window.
+ [Stop looking.] -> room
+ [Finish this test.] -> END

