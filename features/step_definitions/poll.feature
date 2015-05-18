Feature: Create Poll
    In order to start a Poll
    As a user
    So that I can ask a question on the website
    Should send me a message by contact form
 
    Scenario: Poll created
        Given I am on http://localhost:3000
        When I press "New Poll"
        Given I am on http://localhost:3000/polls/new
        And I fill in "poll_title" with "My First Poll"
        When I press "Save"
        Then I am on http://localhost:3000/polls/1
    
    Scenario: Add Question
        Given I am on http://localhost:3000
        When I press "New Poll"
        Given I am on http://localhost:3000/polls/new
        And I fill in "poll_title" with "My First Poll"
        When I press "Save"
        Then I am on http://localhost:3000/polls/1
        Given I am on http://localhost:3000/polls
        When I press "Add question"
        And I fill in "question_title" with "What is your name?"
        
        When I press "Save"
        Then I am on http://localhost:3000/polls/1


    Scenario: Edit Question
        Given I am on http://localhost:3000
        When I press "New Poll"
        Given I am on http://localhost:3000/polls/new
        And I fill in "poll_title" with "My First Poll"
        When I press "Save"
        Then I am on http://localhost:3000/polls/1
        Given I am on http://localhost:3000/polls
        When I press "Add question"
        And I fill in "question_title" with "What is your name?"
        
        When I press "Save"
        Then I am on http://localhost:3000/polls/1
        Given I am on http://localhost:3000/polls
        When I press "Edit"
        Then I am on http://localhost:3000/polls/1/edit
        And I fill in "poll_title" with "All your base belongs to us"
        When I press "Save"
        Then I am on http://localhost:3000/polls/1

    Scenario: Answer Question
        Given I am on http://localhost:3000
        When I press "New Poll"
        Given I am on http://localhost:3000/polls/new
        And I fill in "poll_title" with "My First Poll"
        When I press "Save"
        Then I am on http://localhost:3000/polls/1
        Given I am on http://localhost:3000/polls
        When I press "Add question"
        And I fill in "question_title" with "What is your name?"
        
        When I press "Save"
        Then I am on http://localhost:3000/polls/1
        Given I am on http://localhost:3000/polls
        When I press "Answer"
        Then I am on http://localhost:3000/polls/1/replies/new
        And I fill in "poll_title" with "All your base belongs to us"
        When I press "Save"
        Then I am on http://localhost:3000/polls/1

    Scenario: Show Poll
        Given I am on http://localhost:3000
        When I press "New Poll"
        Given I am on http://localhost:3000/polls/new
        And I fill in "poll_title" with "My First Poll"
        When I press "Save"
        Then I am on http://localhost:3000/polls/1
