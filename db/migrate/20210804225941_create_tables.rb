class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :promos do |t|
      t.string :value, null: false
      t.string :date_range, null: false
      t.string :days_available, null: false

      t.timestamps
    end

    create_table :commerces do |t|
      t.references :promo, null: false
      t.string :name
      t.string :address_street
      t.string :address_number
      t.string :province
      t.string :city
      t.string :kind
      t.string :web
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
