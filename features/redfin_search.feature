Feature: Testing redfin search

Scenario Outline: Search Redfin by City
Given I am Signed In to Redfin
When I search for a property by <City>
Then Verify that the results match my criteria by <City>

Examples:
  | City |
  | Irvine |
  | Costa Mesa |
  | Newport Beach |


