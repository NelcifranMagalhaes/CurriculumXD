require 'rails_helper'

feature "Creators", type: :feature do
	scenario 'verifica link cadastro de Curriculum' do
	  visit(root_path)
	  expect(page).to have_link ('Criar Curriculum')  
	end

	scenario 'Cadastrar novo Curriculum' do
	 	visit(new_creator_path)
	 	fill_in('Nome', with: Faker::Name.name)
	 	fill_in('Email', with: Faker::Internet.email)
	 	fill_in('Data de Nascimento', with: Faker::Date.birthday(18, 65))
	 	fill_in('Descrição', with: Faker::RickAndMorty.quote)
	 	fill_in('Cpf', with: Faker::Number.number(7))
	 	click_on('Criar Currículo')
	end

	scenario 'Não cadastra sem preencher' do
		visit(new_creator_path)
	 	click_on('Criar Currículo')
	 	expect(page).to have_content('não pode ficar em branco')

	end

end
