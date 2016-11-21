Feature: Testing redfin

Scenario: Testing redfin logon
Given I navigate to Redfin
When I sign in using my credentials
Then verify that i am signed in

Scenario: Search Redfin by City
Given I navigate to Redfin
And I am signed In
When I search for a property by City
Then Verify that the results match my criteria by City

