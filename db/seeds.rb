alex = User.create!(username: "alex", email: "alex@alex.com", password: "password1")
matt = User.create!(username: "matt", email: "matt@matt.com", password: "password2")
george = User.create!(username: "george", email: "george@george.com", password: "password3")
StorageSpace.create!(user: alex, location: '22 elder st, london', space: 34)
StorageSpace.create!(user: matt, location: '11 downing st, london', space: 80)
StorageSpace.create!(user: george, location: '1 knightsbridge, london', space: 1000)

puts "Seeded 3 new spaces."
