require 'rails_helper'

feature "Creators", type: :feature do
	scenario 'verifica link cadastro de Curriculum' do
	  visit(root_path)
	  expect(page).to have_link ('Criar Curriculum')  
	end

	# scenario 'Verificar Link de Criar  Curriculum' do
	#   visit(root_path)
	#   click_on('Cadastro de Curriculum')
	# end
end
