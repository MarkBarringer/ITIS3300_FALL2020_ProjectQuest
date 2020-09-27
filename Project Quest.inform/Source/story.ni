"Project Quest" by ITIS-3300 Fall 2020 Group 2

Release along with an interpreter.
Use scoring.
	The maximum score is 100.
When play begins: 
	now the left hand status line is "[the player's surroundings] / Turn: [turn count] / Score: [score]"; 
	now the right hand status line is "Time: [time of day]". 

The Conference room is a room.  
The description of the Conference room is "You are a student in Professor Cynthia Burke’s Software Requirements and Project Management class at UNC Charlotte. Presently you are in a classroom awaiting a quiz on Project Scope management. You are sitting at a desk with other students around you, and the professor is standing in front of a podium in the front of the class. 
	Your computer which you will be using to take the quiz is right in front of you. 
	There is a door to the South.
	
	The professor has asked if anyone wants another quick rundown on scope before the quiz. 
	Go east to start the quiz."

The computer is in the Conference Room.
The description of the computer is "It's just a computer, I think it's  Kaypro?"
After examining the computer: increase the score by 2; say "Oh?  You've used a computer before?  This should be heplful to you."

The leaflet is in the Conference Room.  
The description of the leaflet is "Welcome to ProjectQuest version 1.0! This game is a text-based adventure designed to help students practice their understanding of software project management. In this first version the focus is project scope management.  You will be scored for your decisions.  

The game presents the user with a scenario via text, and the user can react by typing what they wish to do into the console. For example, if the game told you there is a sandwich in front of you, you might type 'eat sandwich' or 'eat the sandwich'. The inputs are not case sensitive, so do not worry about that, however, try to avoid adding too much beyond exactly what you wish to do to avoid confusing the game. If you make a wrong input do not worry though, as the game will just repeat what it just told you again. 

We hope you enjoy and learn from this version of Project Quest!"
After examining the leaflet: increase the score by 1; say "Good luck!".

Professor Burke is a woman.  Professor Burke is in the conference room.  "Professor Burke stands patiently waiting for you to do something..."
After asking Professor Burke about "the project":
	say "To put it simply, scope is the defined functions of a product. What the product does, what it doesn’t do etc. Early on in any project, this would be defined based on available resources, and the desires of the stakeholders, or those who would benefit from the project’s completion. It is important to decide this first, and very clearly, as scope creep can and does kill projects when they try to do too many things.

Scope is often defined in a process called mind mapping in which the project builders start with an idea and build outwards from that. Overall it is simply important that scope is clear from the beginning. 

With that, I believe we have to start the quiz now."; increase the score by 2; say "Well done."

The hallway is south of the Conference Room.  
The description of the hallway is "This is a hallway outside the conference room.  The hallway leads further South and East.  The conference room is North."

The stairwell is south of the hallway.
The description of the stairwell is "A side stairwell that only leads down.  To the North is the hallway."

The basement is down of the stairwell.
The description of the basement is "A dark and damp basement with empty cardboard boxes in various stages of decay.  Any attempt to touch the boxes results in it failing to old, shredded pieces.  A stairwell leads up from here."


Answer mode is a truth state that varies. 
Current state is a text that varies. 

Guessing is an action applying to one topic. 
Understand "[text]" as guessing when answer mode is true. 

Check guessing (this is the default wrong answer rule): 
	if the topic understood is not a topic listed in the Table of Dates of Statehood: 
		say "Wrong!"; 
	now answer mode is false. 

Carry out guessing a topic listed in the Table of Dates of Statehood: 
	if state entry is the current state: 
		say "Correct! ([comment entry], to be exact!)"; 
		increase the score by one; 
	otherwise: 
		say "Wrong!"; 
	now answer mode is false. 
Before doing anything other than guessing: 
	if answer mode is true: 
		say "(ignoring the question)[line break]"; 
	now answer mode is false. 

Section 2 - Scenario 

The quiz is east of the conference room. 
Sam is a man in the quiz.  
The description of Sam is "Sam says he is going to ask you some questions, just type your answers.
Type look or l for me to ask another question." 

Every turn when the player is in the quiz: 
	if a random chance of 3 in 5 succeeds: 
		choose a random row in the Table of Dates of Statehood; 
		say "Sam asks you, 'In what year was [state entry] admitted into the Union?'"; 
		now current state is state entry; 
		now answer mode is true. 

Table of Dates of Statehood 
State		Topic		Comment
"Florida"		"1845"		"March 3rd"
"Delaware" 		"1787" 		"December 7th"
"Hawaii"		"1960"		"July 4th"

Test me with "1845 / z / z / 1787 / 1792 / z / 1845 / g". 
