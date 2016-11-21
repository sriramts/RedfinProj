Given(/^I navigate to Redfin$/) do
  visit '/'
end

When(/^I sign in using my credentials$/) do
  find(:xpath, "//a[@class='link signInLink']").click
  fill_in('emailInput', :with => 'sriramts@hotmail.com')
  fill_in('passwordInput', :with => 'Mustang00!')
end

Then(/^verify that i am signed in$/) do
  page.has_css?('span', text: "Sriram")
end
