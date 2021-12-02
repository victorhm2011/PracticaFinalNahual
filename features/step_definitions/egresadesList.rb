Given("I am on the Nahual home page 2") do
	page.driver.browser.manage.window.maximize
        visit 'https://nahual-argentina-develop.vercel.app/'
end

When('I click the Iniciar Sesión button 2') do
    click_on ('Iniciar Sesión')
end
  
When('I click on the Iniciar con Google button 2') do
    find(:xpath, "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]").click
end

When('I add my email 2') do
    fill_in 'identifierId', :with => ENV['EMAIL']
end
When('I click on the Siguiente button 2') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

When('I add my password 2') do
    fill_in 'password', :with => ENV['PSW']
end

When('I click on the button Siguiente 2') do
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
end

When('I click the button Verificar Acceso 2') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button").click
end

When('I click on the Egresades button') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[1]/a[2]/a").click
end

When('I click on Ver button of the first alumne in the alumnes list') do
    xpathBase= find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/table/tbody/tr[1]/td[5]/button[1]").click
end

Then('I should see the name of the first alumne: Juslan') do
    title = find(:xpath,"/html/body/div[2]/div/div[1]/div/div[2]/h1").text
    if title  != 'Juslan Vargas'
        raise "Expected Juslan Vargas"
    end
    puts('Exito')
end