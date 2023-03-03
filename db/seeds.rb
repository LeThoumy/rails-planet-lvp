require "open-uri"

Booking.destroy_all
Planet.destroy_all
User.destroy_all

owner = User.create!(email: 'a@.a.a', password: '123456')
renter1 = User.create!(email: 'b@b.b', password: '123456')
renter2 = User.create!(email: 'c@c.c', password: '123456')


mercury = Planet.new(name: "mercury", description: "The smallest planet in the solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. Mercury is the fastest planet, zipping around the Sun every 88 Earth days.", price_for_one_night: 249, location: "Milky Way", user_id: 1,);

# Find url for images and store them inside a file variable

image_of_mercury = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg/1200px-Mercury_in_color_-_Prockter07-edit1.jpg");
mercury.photos.attach(io: image_of_mercury, filename: "mercury_01.jpg", content_type: "image/jpg")
mercury.user = owner
mercury.save!

venus = Planet.new(name: "Venus", description: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and, rarely, is visible to the naked eye in broad daylight.", price_for_one_night: 349, location: "Milky Way", user_id: 2)
image_of_venus = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Venus-real_color.jpg/1200px-Venus-real_color.jpg");
venus.photos.attach(io: image_of_venus, filename: "mercury_01.jpg", content_type: "image/jpg")
venus.user = owner
venus.save!

saturn = Planet.new(name: "Saturn", description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth.", price_for_one_night: 299, location: "Milky Way", user_id: 3)
image_of_saturn = URI.open("https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2018/03/saturn_s_greatest_storm/17397601-1-eng-GB/Saturn_s_greatest_storm.jpg");
saturn.photos.attach(io: image_of_saturn, filename: "saturn_01.jpg", content_type: "image/jpg")
saturn.user = owner
saturn.save!


earth = Planet.new(name: "Earth", description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. About 29.2% of Earth's surface is land consisting of continents and islands. The remaining 70.8% is covered with water, mostly by oceans but also lakes, rivers and other fresh water, which together constitute the hydrosphere.", price_for_one_night: 199, location: "Milky Way", user_id: 4)
image_of_earth = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/1200px-The_Earth_seen_from_Apollo_17.jpg");
earth.photos.attach(io: image_of_earth, filename: "earth_01.jpg", content_type: "image/jpg")
earth.user = owner
earth.save!


mars = Planet.new(name: "Mars", description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the 'Red Planet'.", price_for_one_night: 199, location: "Milky Way", user_id: 4);
image_of_mars = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/1200px-OSIRIS_Mars_true_color.jpg");
mars.photos.attach(io: image_of_mars, filename: "mars_01.jpg", content_type: "image/jpg")
mars.user = owner
mars.save!

jupiter = Planet.new(name: "jupiter", description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined.", price_for_one_night: 399, location: "Milky Way", user_id: 5)
image_of_jupiter = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg/1200px-Jupiter_and_its_shrunken_Great_Red_Spot.jpg");
jupiter.photos.attach(io: image_of_jupiter, filename: "jupiter_01.jpg", content_type: "image/jpg")
jupiter.user = owner
jupiter.save!

uranus = Planet.new(name: "Uranus", description: "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn.", price_for_one_night: 299, location: "Milky Way", user_id: 6)
image_of_uranus = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/1200px-Uranus2.jpg");
uranus.photos.attach(io: image_of_uranus, filename: "uranus_01.jpg", content_type: "image/jpg")
uranus.user = owner
uranus.save!

neptune = Planet.new(name: "Neptune", description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet.", price_for_one_night: 299, location: "Milky Way", user_id: 7)
image_of_neptune = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Neptune_Full.jpg/1200px-Neptune_Full.jpg");
neptune.photos.attach(io: image_of_neptune, filename: "neptune_01.jpg", content_type: "image/jpg")
neptune.user = owner
neptune.save!



b = Booking.new
b.planet = mercury
b.user = renter1
b.save!

# b = Booking.new
# b.planet = saturn
# b.user = renter1
# b.save!

# b = Booking.new
# b.planet = mercury
# b.user = renter2
# b.save!
