Feature:  Managing Scout Accounts

  We've got all these talented young men
  who have given their time and gained
  experience whom wish to contribute to
  others and themselves.

  These accounts will insure all scouts
  are able to participate in future events.

  Background:
    Given I am on the Scout Account site
    Then I should see "Troop 261 Finances"

  Scenario Outline: Creating an Account
    When I click on the Sign Up Now! link
    Then I should see "Register"
    And I enter "<email>" in the Email field
    And I enter "<password>" in the Password field
    And I enter "<name>" in the Full Name field
    And I click the Sign Up button
    Then I should see "Thank you for registering with Scout Accounts, please sign in now."

    Examples:
      |email|password|name|
      |fred@flintstone.com|rock|Fred Flintstone|
      |wilma@flintsone.com|ditz|Wilma Flintstone|
      |pebbles@flintsone.com|baby|Pebbles Flintstone|





