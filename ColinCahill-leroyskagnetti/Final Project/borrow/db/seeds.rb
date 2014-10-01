# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create!(name: "Home & Garden")
Category.create!(name: "Sports & Outdoors")
Category.create!(name: "Electronics")
Category.create!(name: "Kitchen")
Category.create!(name: "Books, Art, Music & Movies")
Category.create!(name: "Furniture")
Category.create!(name: "Small Appliances")
Category.create!(name: "Lawn & Garden")
Category.create!(name: "Bicycles & Vehicles")
Category.create!(name: "Lawn & Garden")
Category.create!(name: "Arts & Crafts Supplies")
Category.create!(name: "Antiques & Collectibles")
Category.create!(name: "Health & Beauty Supplies")
Category.create!(name: "Musical Instruments")
Category.create!(name: "Toys & Games")
Category.create!(name: "Clothing & Jewelry")
Category.create!(name: "Other")

Item.create!(name: "A very fasionable rake", description: "This rake has been in the family for so many, so many, many years.  Please take good care of my family\'s rake.", value: 5, image_path: "animal.jpeg", tags: "rake, tool, outside", condition: 65, category_id: 1)
Item.create!(name: "Pair of effin rad rollerblades", description: "Bro these rollerblades are LEGIT.  Treat em nice", value: 25, image_path: "bicycle.jpeg", tags: "skates, blades, extreme", condition: 85, category_id: 2)
Item.create(name: "My dad\'s old phonograph", description: "Appears to be made in 1978.  Needle works okay but there seems to be some problems with the 45 setting.", value: 20, image_path: "bread.jpeg", tags: "record, player, phonograph", condition: 50, category_id: 3)
Item.create(name: "Italian coffee press machine", description: "This is a nifty italian coffee press machine that was left abandoned at my house.  dunno how it works but you may like it.", value: 15, image_path: "earbuds.jpeg", tags: "coffee, italian, machine", condition: 60, category_id: 4)
Item.create(name: "4 original Beatles Records from the 60s", description: "Abbey Road, White Album, Revolver, Rubber Soul.  White Album is pretty worn out, but the others are in pretty good condition", value: 100, image_path: "girl.jpeg", tags: "beatles, records, music", condition: 70, category_id: 5)