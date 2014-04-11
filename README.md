QuizzerFly
==========

Survey Gorilla Team Project with Alexandra, Erin, Jonathan and Ravi!

Our logo will be a purple bunny with butterfly wings. (TO BE ADDED LATER)


Trello
-------

<a href="https://trello.com/b/HlbkbYtl/quizzerfly">QuizzerFly Trello</a>


Wireframe 
---------

<a href="https://erinjoansnyder.mybalsamiq.com/projects/surveygorilla/Survey%20Gorilla%20Wirefram">QuizzerFly Wireframe</a>



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
1 user has many surveys
1 survey has many questions
1 question has many answers
1 survey belongs to 1 user
1 question belongs to 1 survey
1 answer belongs to 1 question 
1 user has many completed-surveys
1 survey has many completed-survey 



USER: id, Name, Email, Company, Password, Timestamps

SURVEY: id, Title, Description, User_Id, Status (completed?), Category? (Weekend Work), timestamps

QUESTION: id, Survey_Id, QuestionText

ANSWER: id, Question_Id, AnswerText

RESULTS: id, User_Id, Answer_Id, 

COMPLETED_SURVEYS: id, User_id, Survey_Id

