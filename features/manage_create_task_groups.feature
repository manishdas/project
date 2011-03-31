Feature: Manage create_task_groups
  In order to [goal]
  [stakeholder]
  wants [behaviour]

@javascript
  Scenario: Register new create_task_group
    Given a person exists with "x@y.com" and password "manish"

    Given I am on the login page
    And I fill in "Email" with "x@y.com"
    And I fill in "Password" with "manish"
    And I press "Sign in"

    And I follow "Create Project"
    And I am on the new_project page
    Then I fill in "project_name" with "Tested Project"
    And I press "Create Project"
    Then a Project should exist with name: "Tested Project"

    And I follow image link "Show"
    And I follow "Create Task Group"
    And I fill in "Task name" with "task group 1"
    And I press "Create Task group"
    And sleep for 5 seconds


