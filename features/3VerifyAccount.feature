Feature: As a Nahul user          
        I want to validate my nahual account          
        so I check that mi profile is available

Background:
   Given I am on the Nahual homepage
   And I click the Iniciar Sesión button
   And I click on the Iniciar con Google button
   And I add my email
   And I click on the Siguiente button
   And I add my password
   And I click on the button Siguiente

Scenario: Validate Nahual Account
    Given I am on the Nahual verify page
    When I click the button Verificar Acceso
    Then I should see the homepage