class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
      t.string :name
      t.date :birthday
      t.string :description
      t.string :cpf
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
