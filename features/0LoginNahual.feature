Feature: As a Nahul use
        I want to loggin in the web page of nahual
        so I check that mi profile is available

Scenario: Nahual Login       
	Given I am on the Nahual homepage
	When I click the Iniciar Sesión button
	And I click on the Iniciar con Google button
	And I add my email: john.doe.ucbcba@gmail.com
	And I add my password: calidad2021
	And I click on the button Siguiente
	Then would be logged