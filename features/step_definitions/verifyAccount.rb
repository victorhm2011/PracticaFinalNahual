
Given('I am on the Nahual verify page') do
    puts('se encuentra en la pagina inicial')
  end
  When('I click the button Verificar Acceso') do
    find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button").click
    puts('se encuentra en la verificacion de acceso')
  end
  Then('I should see the homepage') do
    welcomeText = find(:xpath,"/html/body/div/div/div[4]/div[2]/div/div[2]/div/h3").text
    puts('welcomeText', welcomeText)
    if welcomeText  != "¡ Gracias por confiar en nosotres y ser parte del Proyecto Nahual !"
        raise "Expected the welcome message: '¡ Gracias por confiar en nosotres y ser parte del Proyecto Nahual '"
    end
    puts('Exito en la validacion de cuenta')
  end