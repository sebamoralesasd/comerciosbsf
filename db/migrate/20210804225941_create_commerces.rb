class CreateCommerces < ActiveRecord::Migration[6.0]
  def change
    create_table :commerces do |t|
      t.string :name
      t.string :address_street
      t.string :address_number
      t.string :province
      t.string :city
      t.string :kind
      t.string :promo_value
      t.string :promo_date_range
      t.string :promo_days_available
      t.string :web
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
