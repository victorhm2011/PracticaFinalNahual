Feature: Nahual Login
In order login to my account 
    As an
        I want to online to save money

Scenario: Nahual Login
    Given I am on the Nahual homepage
    When I click the Iniciar Sesión button
    And I click on the Iniciar con Google button
    And I add my email
    And I click on the Siguiente button
    And I add my password
    And I click on the button Siguiente
    Then I should see the button Verificar Acceso
