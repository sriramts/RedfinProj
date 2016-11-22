Feature: Testing redfin

Scenario: Testing redfin logon
Given I navigate to Redfin
When I sign in using my credentials
Then verify that i am signed in


