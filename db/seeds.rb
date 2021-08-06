# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = File.read('base.json')
j = JSON.parse(file)['comercios']
j.collect do |c|
  promo = Promo.find_or_create_by(value: c['promo'],
                                  date_range: c['vigencia'],
                                  days_available: c['dias_aplica_promo'])

  next unless promo.save

  com = Commerce.new(name: c['nombre_fantasia'],
                     address_street: c['direccion_calle'],
                     address_number: c['direccion_nro'].to_i,
                     city: c['localidad'],
                     kind: c['rubro_asj'],
                     promo: promo,
                     web: c['web'],
                     latitude: c['latitud'].to_i,
                     longitude: c['longitud'].to_i)
  com&.save
end
