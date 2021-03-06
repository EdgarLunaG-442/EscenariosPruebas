Feature: Shared board connection

  @user1 @web
  Scenario: e8, Create a published page
    Given I navigate to page with the url stored in the variable
    When I login with credentials
    And I click on element having css selector "[href='#/pages/']"
    And I click on element having css selector "[href='#/editor/page/']"
    And I enter "Pagina para crear" into input field having css selector "[placeholder='Page Title']"
    And I press the key "Tab"
    And I type this "Descripción de página para crear"
    And I save as published "page"
    And I delete the current "page"