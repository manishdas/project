Given /^the following signing_ups:$/ do |signing_ups|
  SigningUp.create!(signing_ups.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) signing_up$/ do |pos|
  visit signing_ups_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following signing_ups:$/ do |expected_signing_ups_table|
  expected_signing_ups_table.diff!(tableish('table tr', 'td,th'))
end

Then /^a person should exist with email: "([^"]*)"$/ do |email|
  person = Person.last
  person.email == email
end

Then /^a Project should exist with name: "([^"]*)"$/ do |name|
  project = Project.last
  project.name == name
end

And /^I follow image link "([^"]*)"$/ do |img_alt|
    find(:xpath, "//img[@alt = '#{img_alt}']/parent::a").click()
end

Then /^sleep for (\d+) seconds$/ do |duration|
  sleep duration.to_i
end
