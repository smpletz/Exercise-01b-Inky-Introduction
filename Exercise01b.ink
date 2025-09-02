/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor. }The cave extends east and west.
* [Pick up the torch] -> torch_pickup
+ [Take the east tunnel.] -> east_tunnel
+ [Take the west tunnel.] -> west_tunnel

== east_tunnel ==
You are in the east. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

=== east_tunnel_lit ===
The light of your torch glints off the thousands of coins in the room.
-> END

== west_tunnel ==
You are in the west.
+ [Go back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END


