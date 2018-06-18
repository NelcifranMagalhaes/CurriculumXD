class AddPhoneNumberToCreators < ActiveRecord::Migration[5.2]
  def change
    add_column :creators, :phone_number, :string
  end
end
