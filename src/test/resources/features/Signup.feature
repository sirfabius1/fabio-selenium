@all
Feature: Sign up

  Scenario Outline: Validate user logged in message
    Given User <user> logs in
    When Second step
    Then Third Step
    Examples:
      | user   | password | Login Message |
      | admin  | hero     | Logged in as Amazing Admin (a.admin@wearewaes.com)!        |
      | dev    | wizard   | Logged in as Zuper Dooper Dev (zd.dev@wearewaes.com)!      |
      | tester | maniac   | Logged in as Al Skept-Cal Tester (as.tester@wearewaes.com) |

  Scenario: Validate user welcome message
    Given First Step
    When Second step
    Then see "How are you doing" on screen

  Scenario Outline: Validate Super Power
    Given User <user> logs in
    When Second step
    Then super power is <superpower>
    Examples:
      | user   | password | superpower                        |
      | admin  | hero     | Change the course of a waterfall  |
      | dev    | wizard   | Debug a repellent factory storage |
      | tester | maniac   | Voltage AND Current               |

  Scenario: Validate Profile link present
    Given First Step
    When Second step
    Then Third Step

  Scenario: Validate logout behavior when user logs in
    Given First Step
    When Second step
    Then see "To get the full hero experience, you’ll need to log in" on screen
    And see "Log in" button
