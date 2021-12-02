When('I click the button Editar of the user named {string}') do |string|
    td = page.find(:css, 'div.ui.label.nombre', text: /#{string}/)
    tr = td.find(:xpath, './parent::td/parent::tr') 
    tr.find(:xpath,'./td[5]/a[1]/button').click
end
  
When('I edit the fields as show below') do |table|
    sleep(3) 
    data = table.rows_hash
    @rowCounter = 0
    data.each_pair do |key, value|
        if value.to_i >0
            @rowCounter +=1
        end 
        case key
          when "Nombre"
            fill_in 'nombre', :with => value
          when "Apellido"
            fill_in 'apellido', :with => value
          when "Tipo Documentacion"
            fill_in 'tipoDNI', :with => value	 
          when "Documentacion"
            fill_in 'dni', :with => value
          end	
        end 
end
  
When('I click in the Confirmar Button') do
    click_on('Confirmar')
    sleep(1)
end

Then('I should see the data changed on the table') do
    puts('we did it')
end
