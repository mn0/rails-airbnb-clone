# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username: "alex")
StorageSpace.create!(location: '22 fayke street, london, eb3 4rx', space: 34)
StorageSpace.create!(location: '11 fayke street, london, eb3 4rx', space: 80)
StorageSpace.create!(location: '33 fayke street, london, eb3 4rx', space: 1000)
