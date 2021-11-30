Given('I click on my name which is in the top-left parat of the screen') do
    find(:xpath, '/html/body/div/div/div[4]/div[1]/div/div/div').click
  end
  
  When('I click in the Cerrar Sesión button') do
    find(:xpath, '/html/body/div/div/div[4]/div[1]/div/div/div/div/div').click
  end
  
  Then('I should be logout from my account') do
  
  end
  
  Then('be in the initial Nahual page') do
    loginButtonText = find(:xpath, '/html/body/div/div/div[4]/div[2]/div/button').text
    if loginButtonText !='Iniciar Sesión'
        raise "This page must have a button 'Iniciar Sesión'"
    end
    puts 'se logro deslogearse'
  end