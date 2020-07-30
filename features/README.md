# Guerkin Feature file Guideline

## Structure

Example of indentation (2 space characters)

```gherkin
@dev
Feature: Reservation - Marketing Preferences
  As a customer who is on the check & reserve flow
  I want Argos to send me the right marketing preferences
  So that I receive (or not) emails as per my preferences

  Scenario: Marketing Preferences - Default state - Opted in
    Given I am a loggued in user on a C&R journey
    And I have opted in for marketing preferences
    When I navigate to the reservation your details page
    Then the email address field should be initialised
    And I should see the marketing preferences option
```

## Steps

More common steps format:

```javascript
Given(/^I am a guest user.*$/)
Given(/^I am a recognised user.*$/)
Given(/^I am a logged in user.*$/)
Given(/^I am a logged out user.*$/)
Given(/^I have .*$/) // Data setup for the user
Given(/^I am on the <page name> page$/)

When(/^I navigate to the <page name> page$/)
When(/^I navigate back(to the <page name> page)?$/)
When(/^I enter "([^"]*)" into the <element>$/)
When(/^I click the <element name> (button|link|image)$/)
When(/^I (check|uncheck) the <checkbox name> option$/)
When(/^I select .* in the <list name>$/)

Then(/^I (should|should not) be (on|redirected to) the <page name> page$/)
Then(/^I (should|should not) see the <element>$/)
Then(/^I (should|should not) see "([^"]*)" as the <element>$/)
Then(/^The <element> (should|should not) be <state>$/)
```
