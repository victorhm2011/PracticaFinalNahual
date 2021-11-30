Given('I click the button Egresades') do
    find(:xpath, '//*[@id="root"]/div/div[4]/div[2]/div/div[1]/a[2]/a').click
  end

Given('I am on the Nahual Egresades page') do
    puts 'I am on the Nahual Egresades page'
  end
  When('I click the button Certificado of the user named {string}') do |string|
    td = page.find(:css, 'div.ui.label.nombre', text: /#{string}/)
    tr = td.find(:xpath, './parent::td/parent::tr') 
    tr.find(:xpath,'./td[5]/a[2]/button').click
  end
  
  Then('I should see the certificate of the user {string}') do |string|
    sleep(10)
    certificateName = find(:xpath,'/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/h1').text
    if certificateName != string
        raise "Expected the #{string} name on the certificate '"
    end
    puts('Exito en la vista del certificado')
  end