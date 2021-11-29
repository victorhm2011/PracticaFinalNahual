Before '@login' do 
    page.driver.browser.manage.window.maximize
        visit 'https://nahual-argentina-develop.vercel.app/'
    
    click_on ('Iniciar Sesión')
      
    find(:xpath, "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]").click
    
    fill_in 'identifierId', :with => ENV['EMAIL']
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
    
    fill_in 'password', :with => ENV['PSW']
    
    xpathBase= find(:xpath, "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span").click
    
    buttonLabel = find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button").text
    if buttonLabel  != 'Verificar Acceso'
        raise "Expected grand total does not match calculated grand total "
    end
    puts('Exito')
end