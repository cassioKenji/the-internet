Given(/^I access the login page$/) do
  @login_page = Login.new
  @login_page.load
end

When(/^I fill in the username field with "([^"]*)"$/) do |username|
  @login_page.username_field.set(username)
end

When(/^I fill in the password field with "([^"]*)"$/) do |password|
  @login_page.password_field.set(password)
end

When(/^I click the submit button$/) do
  @login_page.submit_button.click
end

Then(/^I should be on the secure page$/) do
  expect(page.current_url.split("/").last).eql?("secure")
end

Then(/^I should see a message with the text "([^"]*)"$/) do |message|
  page.has_content?(@login_page.invalid_user_text)
end
