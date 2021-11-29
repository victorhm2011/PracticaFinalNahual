Feature: Nahual Login
In order login to my account 
    As an
        I want to online to save money

Scenario: Nahual Login
    Given I am on the Nahual homepage
    And I click the Iniciar Sesión button
    And I click on the Iniciar con Google button
    And I add my email: john.doe.ucbcba@gmail.com
    And I click on the Siguiente button
    And I add my password: calidad2021
    When I click on the button Siguiente
    Then would be logged
