Given /^the following create_task_groups:$/ do |create_task_groups|
  CreateTaskGroup.create!(create_task_groups.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) create_task_group$/ do |pos|
  visit create_task_groups_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following create_task_groups:$/ do |expected_create_task_groups_table|
  expected_create_task_groups_table.diff!(tableish('table tr', 'td,th'))
end
