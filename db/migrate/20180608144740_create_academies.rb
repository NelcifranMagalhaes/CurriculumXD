class CreateAcademies < ActiveRecord::Migration[5.2]
  def change
    create_table :academies do |t|
      t.string :name
      t.string :begin_date
      t.string :end_date
      t.references :creator, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
