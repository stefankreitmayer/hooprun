Given(/^I am at the home page$/) do
  visit '/'
end

When(/^I click the link (.+)$/) do |text|
  click_link text
end

Then(/^I should see the run setup page$/) do
  expect(page).to have_content('Are you ready')
end
