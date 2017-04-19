# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

restaurants_attr = [
 { name: "noma", address: "13241 cph", phone_number: "18587766817", category: "chinese" },
 { name: "bbq chicken", address: "13241 cph", phone_number: "2342346817", category: "italian" },
 { name: "korean", address: "13241 cph", phone_number: "1858733317", category: "japanese" },
 { name: "pizzahut", address: "13241 cph", phone_number: "185877662537", category: "belgian" }
]
Restaurant.create!(restaurants_attr)

ids = []
Restaurant.all.each do |restaurant|
  ids << restaurant.id
end

review_attr = [
 {content: "soo good", rating: 0, restaurant_id: ids[1]},
 {content: "bad", rating: 3, restaurant_id: ids[1]},
 {content: "soo ok", rating: 2, restaurant_id: ids[2]},
 {content: "good", rating: 3, restaurant_id: ids[3]},
 {content: "never again", rating: 4, restaurant_id: ids[2]},
]

Review.create!(review_attr)
