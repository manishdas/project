Feature: Manage signing_ups
In order to [sign in successfully]

@javascript
Scenario: Register new signing_up
  Given I am on the new_person_registration page
  When I fill in "Email" with "bb4@sprout-technology.com"
  And I fill in "Password" with "manish"
  And I fill in "Password confirmation" with "manish"
  And I press "Sign up"
  Then a person should exist with email: "bb4@sprout-technology.com"
  And I should be on the root page

@javascript
Scenario: Person logs in
  Given I am on the new_person_session page
  When I fill in "Email" with "bb4@sprout-technology.com"
  And I fill in "Password" with "manish"
  And I press "Sign in"
  And I should be on the root page

  #testing of creating new project
  And I follow "Create Project"
  And I am on the new_project page
  Then I fill in "project_name" with "Tested Project"
  And I press "Create Project"
  Then a Project should exist with name: "Tested Project"

  #testing of deleting project
  And I follow image link "Destroy"
  And I press "OK"
  Then I should be on the root page

  #testing of signout
  And I follow "Sign Out"
  Then I should be on the new_person_session page


  #testing of show project
  And I follow image link "Show"

  #testing of creating new task group

  And I follow "Create Task Group"
  Then I should see
  Then sleep for 5 seconds