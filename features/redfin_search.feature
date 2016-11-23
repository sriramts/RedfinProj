Feature: Testing redfin search

Scenario Outline: Search Redfin By CityOrZipOrAgent
Given I am Signed In to Redfin
When I search for a property with a value of <SearchValue> based on <Criteria>
Then I get results that match my criteria

Examples:
  | Criteria | SearchValue |
  | City | Irvine |
  | City | Costa Mesa |
  | City | Newport Beach |
  | Zip | 92618 |
  | Zip | 92610 |
  | Agent | Courtney Rice |
  | Agent | Maureen Millman |
