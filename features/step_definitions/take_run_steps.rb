Given(/^I am at the home page$/) do
  visit '/'
end

When(/^I click the link (.+)$/) do |text|
  click_link text
end

Then(/^I should see the run preparation form$/) do
    pending # express the regexp above with the code you wish you had
end
