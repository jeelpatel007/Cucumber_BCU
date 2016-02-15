Feature: Functional tour of Barclays website

  Scenario: Users can look at NFL cards
    Given a user goes to Barclay Card US
    When they click to the NFL cards banner
    Then website should return a list of NFL cards available
    And User clicks on New York Giants team
    And User checks the Benefits tab
    And User goes to the Rewards section
    And User looks at the FAQs before closing the browser