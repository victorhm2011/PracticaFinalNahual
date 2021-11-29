Feature: As a Nahul user          
        I want to validate my nahual account          
        so I check that mi profile is available

@login
Scenario: Validate Nahual Account
    Given I am on the Nahual validate page
    When I click the button Verificar Acceso
    Then I should see the homepage