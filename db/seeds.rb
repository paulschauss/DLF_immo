# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy database
puts 'Destroying database...'
House.destroy_all

# Create houses
puts 'Creating houses...'
house1 = House.create!(
  name: 'Maison de la Fontaine',
  house_type: 'House',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
  nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
  amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
  aliquam nisl nisl sit amet lorem.',
  price: 1_000_000,
  area: 100,
  bed: 3,
  bathroom: 2,
  outdoor_area: 50
)
# file = URI.open('https://images.unsplash.com/photo-1517436073-3b3b1b1b5c1c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8aG91c2UlMjB3aXN0aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80')
# house1.photo.attach(io: file, filename: 'house1.jpg', content_type: 'image/jpg')

p "#{house1.name} created!"

house2 = House.create!(
  name: 'Mas provinçal',
  house_type: 'House',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  price: 2_000_000,
  area: 200,
  bed: 4,
  bathroom: 3,
  outdoor_area: 100
)

p "#{house2.name} created!"

house3 = House.create!(
  name: 'Appartement de charme',
  house_type: 'House',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  price: 300_000,
  area: 300,
  bed: 5,
  bathroom: 4,
  outdoor_area: 150
)

p "#{house3.name} created!"

appartment1 = House.create!(
  name: 'Maison vue dégagée',
  house_type: 'Appartment',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  price: 400_000,
  area: 400,
  bed: 6,
  bathroom: 2,
  outdoor_area: 0
)

p "#{appartment1.name} created!"

appartment2 = House.create!(
  name: 'Appartement typique',
  house_type: 'Appartment',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  price: 200_000,
  area: 400,
  bed: 6,
  bathroom: 5,
  outdoor_area: 200
)

p "#{appartment2.name} created!"
p "Created #{House.count} house & appartment!"
