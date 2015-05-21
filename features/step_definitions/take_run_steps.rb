module TakeRunStepsHarness
  def setup_run
    visit '/'
    click_link "Let's go for a run"
  end
  def ensure_obstacle_presence(obstacle)
    expect(page).to have_content(obstacle.question)
    obstacle.options.each do |option|
      expect(page).to have_button(option)
    end
  end
  def ensure_obstacle_absence(obstacle)
    expect(page).not_to have_content(obstacle.question)
  end
end

World(TakeRunStepsHarness)


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
  setup_run
end

Then(/^I should see the latest obstacle$/) do
  ensure_obstacle_presence(Obstacle.last)
end

Given(/^I am at the first obstacle$/) do
  setup_run
  click_button "Let's go"
end

When(/^I answer correctly$/) do
  @answered_obstacle = Obstacle.last
  click_button @answered_obstacle.correct_option
end

When(/^I answer incorrectly$/) do
  @answered_obstacle = Obstacle.last
  @answered_obstacle.options.each do |option|
    if option!=@answered_obstacle.correct_option
      click_button option
      break
    end
  end
end

Then(/^I should see a different obstacle$/) do
  ensure_obstacle_presence(Obstacle.last)
  ensure_obstacle_absence(@answered_obstacle)
end

Then(/^I should see the same obstacle$/) do
  ensure_obstacle_presence(@answered_obstacle)
end
