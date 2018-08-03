class DeleteNumberPhoneToCreators < ActiveRecord::Migration[5.2]
  def change
  	remove_column :creators, :phone_number
  end
end
