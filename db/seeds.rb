alex = User.create!(username: "alex", email: "alex@alex.com", password: "password1")

StorageSpace.create!(user: alex, location: '22 fayke street, london, eb3 4rx', space: 34)
StorageSpace.create!(user: alex, location: '11 fayke street, london, eb3 4rx', space: 80)
StorageSpace.create!(user: alex, location: '33 fayke street, london, eb3 4rx', space: 1000)

puts "Seeded 3 new spaces."
