ArtMuseum.create(name:"Louvre", location:"France")
ArtMuseum.create(name:"Milwaukee Art Museum", location:"Milwaukee")
ArtMuseum.create(name:"SF Art Museum", location:"SF")


Artist.create(name:"pablo", image:'www.cnn.com', birthdate: DateTime.now - 300.years)
Artist.create(name:"sam", image:'www.cnn.com', birthdate: DateTime.now - 50000.days)
Artist.create(name:"Jim", image:'www.cnn.com', birthdate: DateTime.now - 4000.days)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Painting.create(title:"La Pieta", image:"www.cnn.com", artist_id:1,  art_museum_id:1)
Painting.create(title:"Good Painting", image:"www.cnn.com", artist_id:1,  art_museum_id:2)
Painting.create(title:"Bad Painting", image:"www.cnn.com", artist_id:3,  art_museum_id:2)
Painting.create(title:"Big Painting", image:"www.cnn.com", artist_id:3,  art_museum_id:3)
Painting.create(title:"Small Painting", image:"www.cnn.com", artist_id:2,  art_museum_id:3)
Painting.create(title:"Really Bad Painting", image:"www.cnn.com", artist_id:2,  art_museum_id:1)


