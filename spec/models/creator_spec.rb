require 'rails_helper'

RSpec.describe Creator, type: :model do
  context 'Salvando dados' do
    
    it 'Salva no banco' do
      expect{ create(:creator) }.to change { Creator.all.size }.by(1)  
    end

    it 'Todos os dados válidos' do
      creator = create(:creator)
  		expect(creator).to be_valid  
  	end

  	it 'cpf inválido' do
  		creator = build(:creator,cpf: nil)#usar build que não salva
  		creator.valid?
  		expect(creator.errors[:cpf]).to include("não pode ficar em branco")
  		
  	end

  	it 'name inválido' do
  		creator = build(:creator,name: nil)#usar build que não salva
  		creator.valid?
  		expect(creator.errors[:name]).to include("não pode ficar em branco")
  		
  	end

  	it 'birthday inválido' do
  		creator = build(:creator,birthday: nil)#usar build que não salva
  		creator.valid?
  		expect(creator.errors[:birthday]).to include("não pode ficar em branco")
  		
  	end

  end
end
