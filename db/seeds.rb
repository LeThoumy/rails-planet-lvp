Booking.destroy_all
Planet.destroy_all
User.destroy_all

owner = User.create!(email: 'a@.a.a', password: '123456')
renter1 = User.create!(email: 'b@b.b', password: '123456')
renter2 = User.create!(email: 'c@c.c', password: '123456')


mercury = Planet.new(name: "Mercury", description: "The smallest planet in the solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. Mercury is the fastest planet, zipping around the Sun every 88 Earth days.", price_for_one_night: 249, location: "Milky Way", user_id: 1,)
mercury.user = owner
mercury.save!

venus = Planet.new(name: "Venus", description: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and, rarely, is visible to the naked eye in broad daylight.", price_for_one_night: 349, location: "Milky Way", user_id: 2)
venus.user = owner
venus.save!

saturn = Planet.new(name: "Saturn", description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth.", price_for_one_night: 299, location: "Milky Way", user_id: 3)
saturn.user = owner
saturn.save!


earth = Planet.new(name: "Earth", description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. About 29.2% of Earth's surface is land consisting of continents and islands. The remaining 70.8% is covered with water, mostly by oceans but also lakes, rivers and other fresh water, which together constitute the hydrosphere.", price_for_one_night: 199, location: "Milky Way", user_id: 4)
earth.user = owner
earth.save!

mars = Planet.new(name: "Mars", description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the 'Red Planet'.", price_for_one_night: 199, location: "Milky Way", user_id: 4)
mars.user = owner
mars.save!

jupiter = Planet.new(name: "jupiter", description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined.", price_for_one_night: 399, location: "Milky Way", user_id: 5)
jupiter.user = owner
jupiter.save!

uranus = Planet.new(name: "Uranus", description: "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn.", price_for_one_night: 299, location: "Milky Way", user_id: 6)
uranus.user = owner
uranus.save!

neptune = Planet.new(name: "Neptune", description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet.", price_for_one_night: 299, location: "Milky Way", user_id: 7)
neptune.user = owner
neptune.save!

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
