Feature: As a Nahual user          
        I want to add a new topic
        so I can divide better the courses
Background:
   Given I am on the Nahual homepage
   And I click the Iniciar Sesión button
   And I click on the Iniciar con Google button
   And I add my email
   And I click on the Siguiente button
   And I add my password
   And I click on the button Siguiente
   And I click the button Verificar Acceso
   And I click the button Cursos

Scenario: Create a new topic
    Given I am on the Nahual Cursos page
    And I click the button Topicos
    When I click the button Topico +
    And I fill the field with the name "Testing Topic Grupo 6"
    And I click the button Crear
    Then I should see a message that confirm the creation of my topic
    And I could see the topic on the list of topics
