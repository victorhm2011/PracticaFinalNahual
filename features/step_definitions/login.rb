Given("I am on the Nahual homepage") do
	page.driver.browser.manage.window.maximize
        visit 'https://nahual-argentina-develop.vercel.app/'
end

Given('I click the Iniciar Sesión button') do
    click_on ('Iniciar Sesión')
end
  
Given('I click on the Iniciar con Google button') do
    find(:xpath, "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]").click
end

Given('I add my email: calidad.nahual@yahoo.com') do
    fill_in 'identifierId', :with => 'calidad.nahual@yahoo.com'
end
Given('I click on the Siguiente button') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

Given('I add my password: calidad2021') do
    fill_in 'password', :with => 'calidad2021'
end

When('I click on the button Siguiente') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

Then('I should see the button Verificar Acceso') do
    buttonLabel = find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button").text
    if buttonLabel  != 'Verificar Acceso'
        raise "Expected grand total does not match calculated grand total "
    end
    puts('Exito')
end
