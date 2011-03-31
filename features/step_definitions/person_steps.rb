Given /^a person exists with "([^"]*)" and password "([^"]*)"$/ do |email, pass|
  Person.create!(:email => email, :password =>pass)
end