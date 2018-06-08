require 'rails_helper'

feature 'Welcome', type: :feature do
	scenario 'Mostrar a mensagem - Crie seu Curriculum' do
		visit(root_path)
		expect(page).to have_content('Crie seu Curriculum')
	end

	scenario 'Verificar o link de cadastro de Curriculum' do
	  visit(root_path)
	  expect(find('ul li')).to have_link('Criar Curriculum')  
	end

end