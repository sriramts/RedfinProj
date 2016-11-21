And(/^I am signed In$/) do
  find(:xpath, "//a[@class='link signInLink']").click
  fill_in('emailInput', :with => 'sriramts@hotmail.com')
  fill_in('passwordInput', :with => 'Mustang00!')
end

When(/^I search for a property by City$/) do
  fill_in('search-box-input', :with => 'Irvine')
  click_button('Search')
end

Then(/^Verify that the results match my criteria by City$/) do
  page.find(:xpath, "//*[@id='sidepane-header']/div[3]/div/div[1]/span[2]")
end