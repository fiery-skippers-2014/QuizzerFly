QuizzerFly
==========

Survey Gorilla Team Project with Alexandra, Erin, Jonathan and Ravi!


Trello
-------

<a href="https://trello.com/b/HlbkbYtl/quizzerfly">QuizzerFly Trello</a>


Wireframe 
---------

<a href="https://erinjoansnyder.mybalsamiq.com/projects/surveygorilla/Survey%20Gorilla%20Wirefram">QuizzerFly Wireframe</a>



User Stories
-----------
1. As a user, I want to be able to take a survey without logging in or signing up?
2. As a user, I want to be able to view the results of the survey without logging in or signing up?
2. As a user, I want to be able to login or signup in order to create a new survey.
3. As a user, I want a profile page where I can view the surveys I've created.
3. As a user, I want to be able to edit or delete my create surveys.
4. As a user, I want to be able to take my own survey.
5. As a user, I want to be limited to only taking a survey once.
6. As a user, I want the ability to vote up surveys.
7. As a user, I want to be able to share my survey through email?



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


Additional Features  AKA Purple Bunnies
------------------
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

 
User             Survey          Question         Answer
:id               :id             :id             :id
:Name            :Title         :survey_id        :question_id
:Email           :Description   :question_text    :answer_text
:Company         :user_id                         
:Password       :status
:timestamps     :Category?
                :timestamps
