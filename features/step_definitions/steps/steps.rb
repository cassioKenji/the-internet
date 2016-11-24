Given(/^I access the login page$/) do
  @login_page = Login.new
  @login_page.load
end

When(/^I fill in the username field$/) do
  # binding.pry
  @login_page.username_field.set("tomsmith") # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in the password field$/) do
  @login_page.password_field.set("SuperSecretPassword!")
end

When(/^I click the submit button$/) do
  @login_page.submit_button.click
end

Then(/^I should be on the secure page$/) do
  expect(page.current_url.split("/").last).eql?("secure")
  binding.pry
end