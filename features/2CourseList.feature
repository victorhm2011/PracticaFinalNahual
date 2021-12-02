Feature: As a Nahual user   
        I want to manage the list of courses
        so students can enroll in the courses      


Scenario: Delete a course
    Given I am on the Nahual home page
    When I click the Iniciar Sesión button 1
    And I click on the Iniciar con Google button 1
    And I add my email 1
    And I click on the Siguiente button 1
    And I add my password 1
    And I click on the button Siguiente 1
    And I click the button Verificar Acceso 1
    And I click on the Cursos button
    When I click on Eliminar button of the first course in the course list
    And I click on Confirmar button
    Then I should see a message of confirmation

@Inactive
Scenario: See Inactive courses
    Given I am on the Nahual home page 3
    When I click the Iniciar Sesión button 3
    And I click on the Iniciar con Google button 3
    And I add my email 3
    And I click on the Siguiente button 3
    And I add my password 3
    And I click on the button Siguiente 3
    And I click the button Verificar Acceso 3
    And I click on the Cursos button 2
    When I click on Active state menu
    And I click on Inactive option
    Then I should see the inactive list and state

