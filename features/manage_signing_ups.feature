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
  Given a person exists with "x@y.com" and password "manish"

  Given I am on the login page
  And I fill in "Email" with "x@y.com"
  And I fill in "Password" with "manish"
  And I press "Sign in"

  #testing of creating new project
  And I follow "Create Project"
  And I am on the new_project page
  Then I fill in "project_name" with "Tested Project"
  And I press "Create Project"
  Then a Project should exist with name: "Tested Project"

  #testing of signout
  And I follow "Sign Out"
  Then I should be on the new_person_session page