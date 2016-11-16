alex = User.create!(username: "alex", email: "alex@alex.com", password: "password1")

StorageSpace.create!(user: alex, location: '22 elder st, london', space: 34)
StorageSpace.create!(user: alex, location: '11 downing st, london', space: 80)
StorageSpace.create!(user: alex, location: '1 knightsbridge, london', space: 1000)

puts "Seeded 3 new spaces."
