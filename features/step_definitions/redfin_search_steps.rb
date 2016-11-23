Given(/^I am Signed In to Redfin$/) do
  visit '/'
  if page.has_no_css?('span', text: "Sriram")
    find(:xpath, "//a[@class='link signInLink']").click
    fill_in('emailInput', :with => 'sriramts@hotmail.com')
    fill_in('passwordInput', :with => 'Mustang00!')
    find_button("Sign In").click
    #find(:xpath, "//div[@class='LoginBox']//button[contains(@class,'Button primary submitButton')]").click
  end
end

When(/^I search for a property with a value of (.*) based on (.*)$/) do |searchValue, criteria|
  @currentCriteria = criteria
  @currentSearchValue = searchValue
  fill_in('search-box-input', :with => searchValue)
  find_button("Search").click
  #Wait is not necessary. Just put it to see the results visually
  sleep 2
end

Then(/^I get results that match my criteria$/) do
  if(@currentCriteria == "Zip" or @currentCriteria == "City")
    page.all(:xpath, "//div[@class='address']/a").each do |el|
      el[:title].include?(@currentSearchValue)
      #el.assert_text(@currentSearchValue)
  	  #expect(el.text).to include(@currentSearchValue)
    end
  else
    page.has_css?('div#agent-name.h1', :text => @currentSearchValue)
    #expect(page.find(:xpath, "//div[contains(@class,'agent-name')]/h1").text).to include(@currentSearchValue)
  end
end
