class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
      t.string :name
      t.string :birthday
      t.string :description
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
