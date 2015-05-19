Given(/^I am at the home page$/) do
  visit '/'
end

When(/^I click the link (.+)$/) do |text|
  click_link text
end

Then(/^I should be on the run setup page$/) do
  expect(page).to have_content('Are you ready')
end

When(/^I click the button (.+)$/) do |text|
  click_button text
end

Given(/^I am on the run setup page$/) do
  visit '/'
  click_link "Let's go for a run"
end

Then(/^I should see the latest obstacle$/) do
  obstacle = Obstacle.last
  expect(page).to have_content(obstacle.sentence)
  obstacle.options.each do |option|
    expect(page).to have_content(option)
  end
end
