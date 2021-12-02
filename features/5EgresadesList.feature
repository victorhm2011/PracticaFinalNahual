Feature: As a Nahual user   
        I want to see an Alumne
        so I can check his information      

Scenario: See an Alumne
    Given I am on the Nahual home page 2
    When I click the Iniciar Sesión button 2
    And I click on the Iniciar con Google button 2
    And I add my email 2
    And I click on the Siguiente button 2
    And I add my password 2
    And I click on the button Siguiente 2
    And I click the button Verificar Acceso 2
    And I click on the Egresades button
    When I click on Ver button of the first alumne in the alumnes list
    Then I should see the name of the first alumne: Juslan