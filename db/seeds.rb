# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

# Destroy database
puts 'Destroying database...'
House.destroy_all

# Create houses
puts 'Creating houses...'
house1 = House.new(
  name: 'Maison de la Fontaine',
  house_type: 'Maison',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
  nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
  amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
  aliquam nisl nisl sit amet lorem.',
  city: 'Paris',
  region: 'Île-de-France',
  price: 1_000_000,
  area: 100,
  bed: 3,
  bathroom: 2,
  outdoor_area: 50
)
file = URI.open('https://images.unsplash.com/photo-1603033867289-91297711d184?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80')
house1.photo.attach(io: file, filename: 'house1.jpg', content_type: 'image/jpg')
house1.save!

p "#{house1.name} created!"

house2 = House.new(
  name: 'Mas provinçal',
  house_type: 'Maison',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  city: 'Paris',
  region: 'Île-de-France',
  price: 2_000_000,
  area: 200,
  bed: 4,
  bathroom: 3,
  outdoor_area: 100
)
file = URI.open('https://images.unsplash.com/photo-1603033867289-91297711d184?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80')
house2.photo.attach(io: file, filename: 'house2.jpg', content_type: 'image/jpg')
house2.save!

p "#{house2.name} created!"

house3 = House.new(
  name: 'Le Splendide',
  house_type: 'Maison',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  city: 'Paris',
  region: 'Île-de-France',
  price: 300_000,
  area: 300,
  bed: 5,
  bathroom: 4,
  outdoor_area: 150
)

file = URI.open('https://images.unsplash.com/photo-1603033867289-91297711d184?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80')
house3.photo.attach(io: file, filename: 'house3.jpg', content_type: 'image/jpg')
house3.save!

p "#{house3.name} created!"

appartment1 = House.new(
  name: 'Maison vue dégagée',
  house_type: 'Appartement',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  city: 'Paris',
  region: 'Île-de-France',
  price: 400_000,
  area: 400,
  bed: 6,
  bathroom: 2,
  outdoor_area: 0
)

file = URI.open('https://images.unsplash.com/photo-1603033867289-91297711d184?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80')
appartment1.photo.attach(io: file, filename: 'appartment1.jpg', content_type: 'image/jpg')
appartment1.save!

p "#{appartment1.name} created!"

appartment2 = House.new(
  name: 'Le loft',
  house_type: 'Appartement',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod,
    nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis aliquam nisl nisl sit
    amet lorem. Sed euismod, nisl sit amet aliquam lacinia, nunc nisl aliquam mauris, quis
    aliquam nisl nisl sit amet lorem.',
  city: 'Paris',
  region: 'Île-de-France',
  price: 200_000,
  area: 400,
  bed: 6,
  bathroom: 5,
  outdoor_area: 200
)

file = URI.open('https://images.unsplash.com/photo-1603033867289-91297711d184?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80')
appartment2.photo.attach(io: file, filename: 'appartment2.jpg', content_type: 'image/jpg')
appartment2.save!

p "#{appartment2.name} created!"
p "Created #{House.count} house & appartment!"
