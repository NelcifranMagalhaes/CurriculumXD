require 'rails_helper'

feature "Creators", type: :feature do
	scenario 'verifica link cadastro de Curriculum' do
	  visit(root_path)
	  expect(page).to have_xpath("//a") 
	end

	scenario 'Cadastrar novo Curriculum' do
	 	visit(new_creator_path)
	 	sign_in users_url(:bob)
	 	fill_in(name:'creator[name]',with: Faker::Name.name)
	 	fill_in(name:'creator[email]',with: Faker::Internet.email)
	 	fill_in(name:'creator[birthday]', with: Faker::Date.birthday(18, 65))
	 	fill_in(name:'creator[description]', with: Faker::RickAndMorty.quote)
	 	fill_in(name:'creator[cpf]', with: Faker::Number.number(7))
	 	click_on('Criar Currículo')
	end

	scenario 'Não cadastra sem preencher' do
		visit(new_creator_path)
	 	click_on('Criar Currículo')
	 	expect(page).to have_content('não pode ficar em branco')

	end

end
