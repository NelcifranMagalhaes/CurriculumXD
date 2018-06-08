class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :begin_date
      t.string :end_date
      t.string :name
      t.text :note
      t.string :address
      t.references :creator, foreign_key: true
      t.timestamps
    end
  end
end
