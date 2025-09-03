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

== east_tunnel_lit ==
The light of your torch glints off the thousands of coins in the room.
+ [Look around] -> east_inspect
-> END

== east_inspect ==
Looking at what has to be millions in treasure, a few things catch your eye.
* [A large sack sits to your left] -> sack_pickup
* {sack_pickup} [Treasure lines the wall of the room] -> treasure_pickup
+ [A large ruby sits on a pedestal] -> ruby_pickup
* [A lever juts out from the wall furthest from the entrance] -> lever_flip
*{treasure_pickup} [The exit is behind you] -> leave
-> END

== sack_pickup ==
You pick up the sack. It's not too heavy, but you know it can be.
+ [Look around more] -> east_inspect
-> END

== treasure_pickup ==
You pick up as much treasure as you can, barely able to lift the sack.
*[Consider what to do next] -> east_inspect
-> END

== leave ==
You drag your sack of gold out of the cave and back to your car. You go home and try to sell it to your local pawn shop the following morning. They look at you like an idiot and make fun of your pirate fantasy as they call the cops for tyring to sell them 50lbs of pyrite that you were fully convinced was gold. Should've paid more attention in geology.
-> END

== ruby_pickup ==
You snatch the ruby off the pedestal with intent to pocket it. To your surpise, water starts to rush in. The entryway from where you came starts to collapse behind you.
* [Run for the exit] -> exit
* [Consider your options] -> inspect

-> END

== exit ==
You were too slow, watching as the last bit of daylight disappears. The water is now at your waist.
*[Move fallen debris] -> darkness
*[Inspect the room] -> inspect
-> END

== darkness ==
Your weak, scrawny, pathetic arms fail to move any rocks. {sack_pickup: It was bold to think you'd be able to carry a sack full of treasure out with you}. Your torch is put out by the water as you breathe your last breath.
-> END

== inspect ==
You see the lever ahead of you. {not exit: The wall behind you fully caves in, leaving you with an extreme sense of urgency.}
* [Pull the lever] -> lever_flip
-> END

== lever_flip ==
{inspect: You rush over, barely making it to the lever before your torch goes out. You give it a pull, but it barely moves|It does nothing. Must be from old age}

* {not inspect} [Continue to look around] -> east_inspect

*{inspect} [Pull harder] -> second_pull
*{inspect} [Feel around for another exit] -> feel_around
-> END

== feel_around ==
You cant feel anyting but rocks and gold. It's exactly what you saw before, so I don't know what you were expecting. The water fills the room as you drown, wondering what you could've done differently.
-> END

== second_pull ==
You pull with all the strength you have. To your surpise, the lever moves! The water starts to drain through a hole, pulling you in.
* [Follow the drain] -> drain
-> END

== drain ==
{sack_pickup: As you feel yourself sliding down the rocky cavern your sack clogs the way. The air pocket that was keeping you alive before fills in. Your dreams of leaving with gold are crushed as you realize that your greed has led to your demise.| You slide down a thin rocky passage, gathering your breath with the air pocket around you. Eventually, you drop into a body of water. A small bit of light from further down the cave lights your surroundings just enough so you can see.}
*{sack_pickup} -> END
*{not sack_pickup} [Get out of the water] -> exit_water
-> END

== exit_water ==
You get out of the water and take a moment to breathe. You feel your pocket and notice that the ruby is still there! You look down the corridor, seeing that the light appears to come from around the corner.
*[Head towards the exit] -> corridor_exit
-> END

== corridor_exit ==
You walk down the corridor, eventually making it to where the light is coming from. You find that you are right next to the parking lot that you parked at on your way in. You get to your car and sit down to think about the journey you had. Now what?
*[Go home] -> go_home
*[Call the girl you met at the bar last night and ask if she wants to go swim in the cave] -> call
-> END

== go_home ==
You leave the cave behind. All thats on your mind now is what to do with this ruby. What a nice problem to have.
-> END

== call ==
You call that girl from the bar and to your surpise she says yes! Half an hour later, she arrives at the cave and the two of you go off to swim. Excited to talk about your adventure, you tell her the story and show off the ruby. She pulls out the knife (which she brought for protection because you invited her out to a cave like a creep) and uses it to pay off her student loans by slashing your throat and taking the ruby for herself. Never know who to trust these days.
-> END

== west_tunnel ==
Oh cool, a grizzly bear! You didn't even put up a fight, dying immediately and giving her cubs their first fresh food delivery.
-> END

== torch_pickup ==
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END


