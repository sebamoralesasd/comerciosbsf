class ChangeAddressNumberType < ActiveRecord::Migration[6.0]
  def change
    change_column :commerces, :address_number, :integer
    change_column :commerces, :latitude, :integer
    change_column :commerces, :longitude, :integer
  end
end
