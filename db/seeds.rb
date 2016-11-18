alex = User.create!(username: "alex", email: "alex@alex.com", password: "password1")
jojo = User.create!(username: "jojo", email: "jojo@jo.com", password: "jojojo")
george = User.create!(username: "george", email: "george@george.com", password: "george123")
matt = User.create!(username: "matt", email: "matt@matt.com", password: "matt123")

StorageSpace.create!(user: alex, location: '22 elder st, london', space: 34)
StorageSpace.create!(user: jojo, location: '11 downing st, london', space: 80)
StorageSpace.create!(user: george, location: '1 knightsbridge, london', space: 1000)

Booking.create!(user_id: matt, storage_space_id: alex, start_date: "2016-03-12", end_date: "2016-03-19", space_required: 20)
Booking.create!(user_id: jojo, storage_space_id: george, start_date: "2016-03-12", end_date: "2016-03-19", space_required: 30)
Booking.create!(user_id: alex, storage_space_id: jojo, start_date: "2016-03-12", end_date: "2016-03-19", space_required: 30)


puts "Seeded 3 new spaces, 4 new users, 3 bookings."
