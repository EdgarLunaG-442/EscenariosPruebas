Feature: realizar publish de una pagina y eliminarlo

  @user1 @web
  Scenario: e17, Como usuario quiero crear una pagina, publicarla, verificar su existencia, cambiar su nombre con un caracter invalido, y validar que no se hicieron modificaciones
    Given I navigate to page with the url stored in the variable
    And I login with credentials
    And I navigate to menu "pages/"
    And I click on element having css selector "a[href='#/editor/page/']"
    And I enter "Page Nueva Prueba" into input field having css selector ".gh-editor-title"
    And I wait for 1 seconds
    And I enter "texto de prueba de la pagina" into input field having css selector "p[data-koenig-dnd-droppable='true']"
    And I click on element having css selector ".gh-publishmenu"
    And I click on element having css selector ".gh-publishmenu-button"
    And I navigate to page with the url stored in the variable
    And I navigate to menu "pages/"
    And I open "Page Nueva Prueba" page match info
    Then I enter a text with "256" chars into input field having css selector ".gh-editor-title"
    And I click on element having css selector ".gh-publishmenu"
    And I click on element having css selector ".gh-publishmenu-button"
    Then I click on element having css selector "a[href='#/pages/']"
    Then I click on element having css selector ".gh-btn-red"
    Then I verify the existance of post with title "Page Nueva Prueba"
    And I delete the new post with title: "Page Nueva Prueba"
    And I navigate to page with the url stored in the variable
    And I navigate to menu "pages/"