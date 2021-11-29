Feature: As a Nahul user          
        I want to loggin in the web page of nahual          
        so I check that mi profile is available

Scenario: Nahual Login
    Given I am on the Nahual homepage
    When I click the Iniciar Sesión button
    And I click on the Iniciar con Google button
    And I add my email
    And I click on the Siguiente button
    And I add my password
    And I click on the button Siguiente
    Then I should see the button Verificar Acceso
