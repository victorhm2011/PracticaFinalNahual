#Scenario: Delete a course

Given("I am on the Nahual home page") do
	page.driver.browser.manage.window.maximize
        visit 'https://nahual-argentina-develop.vercel.app/'
end

When('I click the Iniciar Sesión button 1') do
    click_on ('Iniciar Sesión')
end
  
When('I click on the Iniciar con Google button 1') do
    find(:xpath, "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]").click
end

When('I add my email 1') do
    fill_in 'identifierId', :with => ENV['EMAIL']
end
When('I click on the Siguiente button 1') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

When('I add my password 1') do
    fill_in 'password', :with => ENV['PSW']
end

When('I click on the button Siguiente 1') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

When('I click the button Verificar Acceso 1') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button").click
end

When('I click on the Cursos button') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[1]/a[3]/a").click
end

When('I click on Eliminar button of the first course in the course list') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[2]/table/tbody/tr[1]/td[7]/div/button[2]").click
end

When('I click on Confirmar button') do
    xpathBase= find(:xpath,"/html/body/div[2]/div/div[3]/div/button[2]").click
end

Then('I should see a message of confirmation') do
    messageLabel = find(:xpath,"/html/body/div/div/div[2]/div/div/div/p").text
    if messageLabel  != 'Curso eliminado con éxito'
        raise "Expected message of confirmation"
    end
    puts('Exito')
end

#Scenario: See Inactive courses

Given("I am on the Nahual home page 3") do
	page.driver.browser.manage.window.maximize
        visit 'https://nahual-argentina-develop.vercel.app/'
end

When('I click the Iniciar Sesión button 3') do
    click_on ('Iniciar Sesión')
end
  
When('I click on the Iniciar con Google button 3') do
    find(:xpath, "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]").click
end

When('I add my email 3') do
    fill_in 'identifierId', :with => ENV['EMAIL']
end
When('I click on the Siguiente button 3') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

When('I add my password 3') do
    fill_in 'password', :with => ENV['PSW']
end

When('I click on the button Siguiente 3') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

When('I click the button Verificar Acceso 3') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button").click
end

When('I click on the Cursos button 2') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[1]/a[3]/a").click
end

When('I click on Active state menu') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[2]/div[4]/div/div[2]").click
end

When('I click on Inactive option') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[2]/div[4]/div/div[2]/div[2]/div[2]").click
end

Then('I should see the inactive list and state') do
    state = find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[2]/div[4]/div/div[2]/div[1]").text
    if state != 'Inactivo'
        raise "Expected Inactivo state"
    end
    puts('Exito')
end