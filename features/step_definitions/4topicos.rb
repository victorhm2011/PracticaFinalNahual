Given('I click the button Cursos') do
    click_on('Cursos')
end

Given('I am on the Nahual Cursos page') do
    puts('I am on the cursos page')
end

Given('I click the button Topicos') do
    click_on('Topicos')
end

When('I click the button Topico +') do
    click_on('Topico')
end

When('I fill the field with the name {string}') do |topic|
    @topic = topic
    fill_in 'Topico', :with => topic
end

When('I click the button Crear') do
    click_on('Crear')
    sleep(1)
end

Then('I should see a message that confirm the creation of my topic') do
    message= "Tópico creado con éxito"
    expect(page).to have_content(message)
    confirm = "Se creó el Tópico: "+@topic
    expect(page).to have_content(confirm)
end

Then('I could see the topic on the list of topics') do
    expect(page).to have_content('Testing Topic Grupo 6')
    sleep(2)
end