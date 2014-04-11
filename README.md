QuizzerFly
==========

Survey Gorilla Team Project with Alexandra, Erin, Jonathan and Ravi!

Our logo will be a purple bunny with butterfly wings. 

<img height="300px" src="http://i.imgur.com/qEAXN7y.jpg">


Trello
-------

<a href="https://trello.com/b/HlbkbYtl/quizzerfly">QuizzerFly Trello</a>


Wireframe 
---------

<a href="https://erinjoansnyder.mybalsamiq.com/projects/surveygorilla/prototype/Survey%20Gorilla%20Wirefram?key=c6a97ed7be1981ce5515603ebee08a00054fe977">QuizzerFly Wireframe</a>

Git Workflow
-----------
1. Each feature gets its own branch
2. Each team member will commit often with descriptive commit messages
3. Each team member will pull from master and resolve merge conflicts on their own local machine before pushing to Github
4. Each team member will check Github for pull requests and either merge or close (and notify the person who issued the pull request) before pulling from master.
5. Each team member should submit a pull request ONLY once their feature branch has been tested!!!!!!!!! 
6. Anyone can merge a pull request (except their own, of course) into master after looking over the code. If the code is bad or breaks things, the team member should close it and notify the person who issued the pull request immediately!



User Stories
-----------
* As a user, I want to be able to login or signup in order to take or create a new survey.
* As a user, I want a profile page where I can view the surveys I've created.
* As a user, (FOR NOW) I want to be able to view a homepage that has all of the surveys every user created.
* As a user, I want to be able to edit or delete my create surveys.
* As a user, I want to be able to take my own survey.
* As a user, I want to be limited to only taking a survey once.
* As a user, I want the ability to vote up surveys.
* As a user, I want to be able to share my survey through email
* (EVENTUALLY) I want to be able for people to ONLY take my survey if they receive the email (no more list on the homepage)
* As a user, I want to be required to finisha survey before I submit it.


What makes up a survey?
----------------------
* A title
* Create a question (text)
* Create a response (radio buttons)
* Ability to complete a survey
* See an alert over survey submission
* Delete a question before submitting it
* Add a description



What makes up a Question? 
------------------------
* Input field where you can type in any text
* Add an input response (radio buttons)
* Submit a finished question



Additional Features/ Weekend Work  AKA Purple Bunnies!!!
----------------------------------------------------
* Ability to vote up surveys
* Track who takes my survey
* Share my survey via email
* Able to see data on my survey
* Mobile ready
* Survey Categories
* Answers other than multiple-choice


Schema: 
-------
* 1 user has many surveys  
* 1 survey has many questions  
* 1 question has many answers  
* 1 survey belongs to 1 user  
* 1 question belongs to 1 survey  
* 1 answer belongs to 1 question   
* 1 user has many completed-surveys  
* 1 survey has many completed-survey   



USER: id, Name, Email, Company, Password, Timestamps

SURVEY: id, Title, Description, User_Id, Category? (Weekend Work), timestamps

QUESTION: id, Survey_Id, QuestionText

ANSWER: id, Question_Id, AnswerText

RESULTS: id, User_Id, Answer_Id, 

COMPLETED_SURVEYS: id, User_id, Survey_Id

