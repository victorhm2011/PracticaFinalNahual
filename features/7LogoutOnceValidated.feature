Feature: As a Nahul user          
        I want to logout from my account once I have logged in 
        so I can be sure that no one will be able to access my account without the password

Background:
   Given I am on the Nahual homepage
   And I click the Iniciar Sesión button
   And I click on the Iniciar con Google button
   And I add my email
   And I click on the Siguiente button
   And I add my password
   And I click on the button Siguiente
   
Scenario: View a user certificate
    Given I am on the Nahual homepage
    And I click on my name which is in the top-left parat of the screen
    When I click in the Cerrar Sesión button
    Then I should be logout from my account 
    And be in the initial Nahual page
