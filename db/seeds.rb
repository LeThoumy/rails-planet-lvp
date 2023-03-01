Booking.destroy_all
Planet.destroy_all
User.destroy_all

owner = User.create!(email: 'a@.a.a', password: '123456')
renter1 = User.create!(email: 'b@b.b', password: '123456')
renter2 = User.create!(email: 'c@c.c', password: '123456')

mercury = Planet.new(name: "Mercury")
mercury.user = owner
mercury.save!

saturn = Planet.new(name: "Saturn")
saturn.user = owner
saturn.save!

b = Booking.new
b.planet = mercury
b.user = renter1
b.save!

b = Booking.new
b.planet = saturn
b.user = renter1
b.save!

b = Booking.new
b.planet = mercury
b.user = renter2
b.save!
