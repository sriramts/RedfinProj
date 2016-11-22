Given(/^I am Signed In to Redfin$/) do
  visit '/'
  if page.has_no_css?('span', text: "Sriram")
    find(:xpath, "//a[@class='link signInLink']").click
    fill_in('emailInput', :with => 'sriramts@hotmail.com')
    fill_in('passwordInput', :with => 'Mustang00!')
  end
end

When(/^I search for a property by (.*)$/) do |city|
  fill_in('search-box-input', :with => city)
  click_button('Search')
end

Then(/^Verify that the results match my criteria by (.*)$/) do |city|
  page.all(:xpath, "//div[@class='address']/a").each do |el|
  	expect(el.text).to include(city)
  end
end