@javascript
Feature: metric value
  As signed in user I want to be able to add a metric value.

  Background:
    Given I am signed in as Joe User
    And I wait until ajax response done
    And I go to  "/new metric_value"
    And I wait until ajax response done
    And I maximize the browser

  Scenario: Create a metric value
    When I fill in "#pointer_item" field with "Apple Inc" within ".RIGHT-company"
    And I select "Joe User+researched" from choosen within ".RIGHT-metric"
    And I wait until ajax response done
    And I press link button "Next"
    And I wait until ajax response done
    And I press link button "Add a new source"
    And I wait until ajax response done
    And I fill in "card_subcards__Link_content" with "http://example.com"
    And I press "Add and preview"
    And I wait until ajax response done
    And I scroll 200 pixels
    And I press link button "Cite!"
    And I wait until ajax response done
    And I fill in "pointer_item" with "2009"
    And I fill in "card_subcards__values_content" with "10"
    And I fill in "card_subcards__Discussion_comment" with "Do not take life too seriously. You will never get out of it alive."
    And I press "Submit"
    And I wait until ajax response done
    And I scroll -10000 pixels
    Then I should see "2009"
    And I should see "10"
    And I should see a comment icon
    And I click the drop down button
    Then I should see "example.com"
    And I should see "Do not take life too seriously. You will never get out of it alive."

  Scenario: Create a metric value with duplicated source
    When I fill in "#pointer_item" field with "Apple Inc" within ".RIGHT-company"
    And I select "Joe User+researched" from choosen within ".RIGHT-metric"
    And I wait until ajax response done
    And I press link button "Next"
    And I wait until ajax response done
    And I press link button "Add a new source"
    And I wait until ajax response done
    And I fill in "card_subcards__Link_content" with "http://www.wikiwand.com/en/Star_Wars"
    And I press "Add and preview"
    And I wait until ajax response done
    And I scroll 200 pixels
    And I press link button "Cite!"
    And I wait until ajax response done
    And I fill in "pointer_item" with "2009"
    And I fill in "card_subcards__values_content" with "10"
    And I fill in "card_subcards__Discussion_comment" with "Do not take life too seriously. You will never get out of it alive."
    And I press "Submit"
    And I wait until ajax response done
    And I scroll -10000 pixels
    Then I should see "2009"
    And I should see "10"
    And I should see a comment icon
    And I click the drop down button
    Then I should see "www.wikiwand.com"
    And I should see "Do not take life too seriously. You will never get out of it alive."

  Scenario: Missing year
    When I fill in "#pointer_item" field with "Apple Inc" within ".RIGHT-company"
    And I select "Joe User+researched" from choosen within ".RIGHT-metric"
    And I wait until ajax response done
    And I press link button "Next"
    And I wait until ajax response done
    And I press link button "Add a new source"
    And I wait until ajax response done
    And I fill in "card_subcards__Link_content" with "http://example.com"
    And I press "Add and preview"
    And I wait until ajax response done
    And I scroll 200 pixels
    And I press link button "Cite!"
    And I wait until ajax response done
    And I fill in "card_subcards__values_content" with "10"
    And I fill in "card_subcards__Discussion_comment" with "Do not take life too seriously. You will never get out of it alive."
    And I press "Submit"
    And I wait until ajax response done
    And I should see "Problems"
    And I should see "Missing year. Please check before submit."

  Scenario: Missing value
    When I fill in "#pointer_item" field with "Apple Inc" within ".RIGHT-company"
    And I select "Joe User+researched" from choosen within ".RIGHT-metric"
    And I wait until ajax response done
    And I press link button "Next"
    And I wait until ajax response done
    And I press link button "Add a new source"
    And I wait until ajax response done
    And I fill in "card_subcards__Link_content" with "http://example.com"
    And I press "Add and preview"
    And I wait until ajax response done
    And I scroll 200 pixels
    And I press link button "Cite!"
    And I wait until ajax response done
    And I fill in "pointer_item" with "2009"
    And I fill in "card_subcards__Discussion_comment" with "Do not take life too seriously. You will never get out of it alive."
    And I press "Submit"
    And I wait until ajax response done
    And I should see "Problems"
    And I should see "Missing value. Please check before submit."

  Scenario: Missing value
    When I fill in "#pointer_item" field with "Apple Inc" within ".RIGHT-company"
    And I select "Joe User+researched" from choosen within ".RIGHT-metric"
    And I wait until ajax response done
    And I press link button "Next"
    And I wait until ajax response done
    And I press link button "Add a new source"
    And I wait until ajax response done
    And I fill in "card_subcards__Link_content" with "http://example.com"
    And I press "Add and preview"
    And I wait until ajax response done
    And I scroll 200 pixels
    And I fill in "pointer_item" with "2009"
    And I fill in "card_subcards__values_content" with "10"
    And I fill in "card_subcards__Discussion_comment" with "Do not take life too seriously. You will never get out of it alive."
    And I press "Submit"
    And I wait until ajax response done
    And I should see "Problems"
    And I should see "SOURCE: does not exist."

