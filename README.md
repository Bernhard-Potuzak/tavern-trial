# tavern-trial

Here you can find all the answer (except for 6) to the questions.
Question 1 - 4 are answered in the scripts q1-q3.lua and q4.cpp


## Question 5:
For question 5 I looked into the source code of the forgotten server and checked how other spells/skills are working. I found the spell "exevo gran mas frigo" which is connected to the eternal winter script. 
In this script I edited the area that the tornados are spawned around the player character. I also set the level and premium requirements to 1 and 0 in the spells.xml that I can test it right away.

## Question 7:
For question 7 I created a new module called game_jump and added it to the list in interface.otmod. I created a lua script for the logic and a otmod file for the module logic and a otui file for all the panels and buttons.
I managed to let it jump if the button is pressed but I did not manage to always let it move through the window panel.

## Question 6: skipped
I skippped this question but I still want to share my thoughts:
I think this effect can be achieved with the right sprites. Then it should be the same as with the frigo spell. I added a pseudo code in q6.lua with comments to explain my idea of a dash like spell or ability.

