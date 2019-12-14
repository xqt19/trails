# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Destroying ItemCategories..."
# ItemCategory.destroy_all
# puts "Destroying Categories..."
# Category.destroy_all
puts "Destroying Items that does not belong to user..."
Item.where(user_id: nil).destroy_all
# puts "Destroying trails...along with lists (list_items, delegations), activities, and collabs"
# Trail.destroy_all
# puts "Destroying friendships..."
# Friendship.destroy_all
# puts "Destroying users..."
# User.destroy_all

puts "Creating Categories if they don't exist..."
unless Category.any?
  categories_array = ["Custom", "Travelling", "Day at the Beach", "Mountain Climbing", "Hiking", "Chalet", "Camping", "BBQ"]

  categories_array.each do |string|
    unless Category.any? { |a| a.name == string }
      Category.create!(name: string)
    end
  end
end
travelling = Category.find_by(name: "Travelling")
beach = Category.find_by(name: "Day at the Beach")
mtclimbing = Category.find_by(name: "Mountain Climbing")
hiking = Category.find_by(name: "Hiking")
chalet = Category.find_by(name: "Chalet")
camping = Category.find_by(name: "Camping")
bbq = Category.find_by(name: "BBQ")

bbq_items = ["Spatula", "Tongs", "Charcoal", "Aluminum Foil", "Oil", "Ice Box", "Plates", "Cups", "Cutleries",
"Ice Packs", "Bottle Opener", "Corkscrew", "Steak", "Pork Ribs", "Salmon", "Shrimp", "Chicken", "Salad", "Pasta",
"Soft Drinks", "Sodas", "Fruit Juices", "Ice Cream", "BBQ Sauce", "Tomato Sauce", "Beer", "Cheese", "Lettuce", "Onion",
"Mushroom", "Bacon", "Hamburger", "Salt", "Pepper", "Toothpicks"]

puts "Adding template items..."
bbq_items.each do |item|
  temp = Item.create(name: item)
  ItemCategory.create!(item: temp, category: bbq)
end

one = Item.create(name: "Passport")
ItemCategory.create!(item: one, category: travelling)

two = Item.create(name: "Travel Adaptor")
ItemCategory.create!(item: two, category: travelling)
ItemCategory.create!(item: two, category: chalet)

three = Item.create(name: "Day Backpack")
ItemCategory.create!(item: three, category: travelling)
ItemCategory.create!(item: three, category: beach)
ItemCategory.create!(item: three, category: mtclimbing)
ItemCategory.create!(item: three, category: hiking)
ItemCategory.create!(item: three, category: chalet)
ItemCategory.create!(item: three, category: camping)

four = Item.create(name: "Water Bottle")
ItemCategory.create!(item: four, category: travelling)
ItemCategory.create!(item: four, category: beach)
ItemCategory.create!(item: four, category: mtclimbing)
ItemCategory.create!(item: four, category: hiking)
ItemCategory.create!(item: four, category: camping)

five = Item.create(name: "Multi USB charger")
ItemCategory.create!(item: five, category: travelling)
ItemCategory.create!(item: five, category: chalet)
ItemCategory.create!(item: five, category: bbq)

six = Item.create(name: "Toiletries")
ItemCategory.create!(item: six, category: travelling)
ItemCategory.create!(item: six, category: beach)
ItemCategory.create!(item: six, category: chalet)
ItemCategory.create!(item: six, category: camping)
ItemCategory.create!(item: six, category: mtclimbing)

seven = Item.create(name: "Slippers")
ItemCategory.create!(item: seven, category: travelling)
ItemCategory.create!(item: seven, category: beach)
ItemCategory.create!(item: seven, category: chalet)
ItemCategory.create!(item: seven, category: camping)
ItemCategory.create!(item: seven, category: bbq)

eight = Item.create(name: "Sweater")
ItemCategory.create!(item: eight, category: travelling)
ItemCategory.create!(item: eight, category: hiking)
ItemCategory.create!(item: eight, category: chalet)
ItemCategory.create!(item: eight, category: camping)

nine = Item.create(name: "Power Bank")
ItemCategory.create!(item: nine, category: travelling)
ItemCategory.create!(item: nine, category: beach)
ItemCategory.create!(item: nine, category: mtclimbing)
ItemCategory.create!(item: nine, category: hiking)
ItemCategory.create!(item: nine, category: chalet)
ItemCategory.create!(item: nine, category: camping)
ItemCategory.create!(item: nine, category: bbq)

ten = Item.create(name: "Mosquito Repellent")
ItemCategory.create!(item: ten, category: travelling)
ItemCategory.create!(item: ten, category: beach)
ItemCategory.create!(item: ten, category: mtclimbing)
ItemCategory.create!(item: ten, category: hiking)
ItemCategory.create!(item: ten, category: camping)

eleven = Item.create(name: "Hand Sanitizer")
ItemCategory.create!(item: eleven, category: travelling)
ItemCategory.create!(item: eleven, category: beach)
ItemCategory.create!(item: eleven, category: mtclimbing)
ItemCategory.create!(item: eleven, category: hiking)
ItemCategory.create!(item: eleven, category: chalet)
ItemCategory.create!(item: eleven, category: camping)
ItemCategory.create!(item: eleven, category: bbq)

twelve = Item.create(name: "Camera")
ItemCategory.create!(item: twelve, category: travelling)
ItemCategory.create!(item: twelve, category: beach)
ItemCategory.create!(item: twelve, category: hiking)
ItemCategory.create!(item: twelve, category: chalet)
ItemCategory.create!(item: twelve, category: mtclimbing)
ItemCategory.create!(item: twelve, category: camping)
ItemCategory.create!(item: twelve, category: bbq)

thirteen = Item.create(name: "Towel")
ItemCategory.create!(item: thirteen, category: travelling)
ItemCategory.create!(item: thirteen, category: beach)
ItemCategory.create!(item: thirteen, category: camping)
ItemCategory.create!(item: thirteen, category: chalet)
ItemCategory.create!(item: thirteen, category: bbq)

forteen = Item.create(name: "Beach Toys")
ItemCategory.create!(item: forteen, category: beach)

fifteen = Item.create(name: "Sunscreen")
ItemCategory.create!(item: fifteen, category: beach)
ItemCategory.create!(item: fifteen, category: travelling)
ItemCategory.create!(item: fifteen, category: hiking)
ItemCategory.create!(item: fifteen, category: camping)

sixteen = Item.create(name: "Portable Stove")
ItemCategory.create!(item: sixteen, category: chalet)
ItemCategory.create!(item: sixteen, category: camping)
ItemCategory.create!(item: sixteen, category: bbq)

seventeen = Item.create(name: "Utensils")
ItemCategory.create!(item: seventeen, category: chalet)
ItemCategory.create!(item: seventeen, category: camping)
ItemCategory.create!(item: seventeen, category: bbq)

eighteen = Item.create(name: "Dry Rations")
ItemCategory.create!(item: eighteen, category: travelling)
ItemCategory.create!(item: eighteen, category: mtclimbing)
ItemCategory.create!(item: eighteen, category: hiking)
ItemCategory.create!(item: eighteen, category: camping)

nineteen = Item.create(name: "Lighter")
ItemCategory.create!(item: nineteen, category: travelling)
ItemCategory.create!(item: nineteen, category: mtclimbing)
ItemCategory.create!(item: nineteen, category: hiking)
ItemCategory.create!(item: nineteen, category: chalet)
ItemCategory.create!(item: nineteen, category: camping)
ItemCategory.create!(item: nineteen, category: bbq)

twenty = Item.create(name: "Torchlight")
ItemCategory.create!(item: twenty, category: travelling)
ItemCategory.create!(item: twenty, category: mtclimbing)
ItemCategory.create!(item: twenty, category: chalet)
ItemCategory.create!(item: twenty, category: camping)

twentyone = Item.create(name: "Extension Plug")
ItemCategory.create!(item: twentyone, category: travelling)
ItemCategory.create!(item: twentyone, category: chalet)

twentytwo = Item.create(name: "Wi-Fi Router")
ItemCategory.create!(item: twentytwo, category: travelling)

twentythree = Item.create(name: "Travel SIM Card")
ItemCategory.create!(item: twentythree, category: travelling)

twentyfour = Item.create(name: "Ear Plug")
ItemCategory.create!(item: twentyfour, category: travelling)
ItemCategory.create!(item: twentyfour, category: camping)

twentyfive = Item.create(name: "Hat / Cap")
ItemCategory.create!(item: twentyfive, category: travelling)
ItemCategory.create!(item: twentyfive, category: hiking)
ItemCategory.create!(item: twentyfive, category: beach)
ItemCategory.create!(item: twentyfive, category: camping)

twentysix = Item.create(name: "Underwear")
ItemCategory.create!(item: twentysix, category: travelling)
ItemCategory.create!(item: twentysix, category: hiking)
ItemCategory.create!(item: twentysix, category: camping)
ItemCategory.create!(item: twentysix, category: mtclimbing)
ItemCategory.create!(item: twentysix, category: chalet)

twentyseven = Item.create(name: "Swimming Trunks")
ItemCategory.create!(item: twentyseven, category: travelling)
ItemCategory.create!(item: twentyseven, category: chalet)
ItemCategory.create!(item: twentyseven, category: beach)

twentyeight = Item.create(name: "Swimming Goggles")
ItemCategory.create!(item: twentyeight, category: travelling)
ItemCategory.create!(item: twentyeight, category: chalet)
ItemCategory.create!(item: twentyeight, category: beach)

twentynine = Item.create(name: "Sleepwear")
ItemCategory.create!(item: twentynine, category: travelling)
ItemCategory.create!(item: twentynine, category: chalet)
ItemCategory.create!(item: twentynine, category: mtclimbing)
ItemCategory.create!(item: twentynine, category: camping)

thirty = Item.create(name: "First-Aid Kit")
ItemCategory.create!(item: thirty, category: travelling)
ItemCategory.create!(item: thirty, category: camping)
ItemCategory.create!(item: thirty, category: hiking)
ItemCategory.create!(item: thirty, category: mtclimbing)
ItemCategory.create!(item: thirty, category: bbq)

# puts "creating all lewagon peeps"
# zache = User.create(name: "Zache", email: "zache@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575712557/zache_ne0rfi.jpg')
# nesh = User.create(name: "Nesh", email: "nesh@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017254/ry3obyvvadzq6ho3vzjx.jpg')
# xq = User.create(name: "Xiu Qi", email: "xq@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017227/ukfmuiph7mjxbkhucmqg.jpg')
# yifan = User.create(name: "Yi Fan", email: "yifan@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017228/u9gkbniqnieh2jqxp9nk.jpg')
# michael = User.create(name: "Michael", email: "mike@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017267/erjc7psxbkpo8b6m3hxu.jpg')
# charmaine = User.create(name: "Charmaine", email: "charms@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017275/zopcvs0bam6kymwthtia.jpg')
# vibhuti = User.create(name: "Vibhuti", email: "vib@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1574957215/sa8ulwd6at5s8iwclnrn.jpg')
# najihah = User.create(name: "Najihah", email: "naj@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1574957227/maqq5nioajx59rpnj0e7.jpg')
# justin = User.create(name: "Najihah", email: "naj@lewagon.com", password: "password", remote_photo_url: '')
# dirk = User.create(name: "Dirk", email: "dirk@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017238/rus7yjkpb7eaqy9vuuca.jpg')
# prima = User.create(name: "Prima", email: "prima@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017217/j1ojkjhh7evahh6rvg5f.jpg')
# guido = User.create(name: "Guido", email: "guido@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017253/ojwyd1jkye7x7nuipwv8.jpg')
# rachael = User.create(name: "Rachael", email: "rachael@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017242/uadschvxy8avbuvlwp2b.jpg')

puts "creating trails"
# Trail.create(user_id: zache.id, name: "Barbeque Plan", start_date: Date.new(2019, 12, 8), end_date: Date.new(2019, 12, 8))
# Trail.create(user_id: zache.id, name: "Japan Trip", start_date: Date.new(2020, 3, 27), end_date: Date.new(2020, 4, 8))
# Trail.create(user_id: nesh.id, name: "Chalet Plan", start_date: Date.new(2020, 1, 9), end_date: Date.new(2020, 1, 11))
# Trail.create(user_id: xq.id, name: "School camping trip", start_date: Date.new(2019, 12, 26), end_date: Date.new(2019, 12, 30))

# puts "adding collaborators"
# Collab.create(user_id: nesh.id, trail_id: zache.trails.first.id)
# Collab.create(user_id: xq.id, trail_id: zache.trails.first.id)
# Collab.create(user_id: nesh.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: xq.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: yifan.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: michael.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: charmaine.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: vibhuti.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: najihah.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: dirk.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: prima.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: guido.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: rachael.id, trail_id: zache.trails.last.id)
# Collab.create(user_id: zache.id, trail_id: nesh.trails.first.id)
# Collab.create(user_id: zache.id, trail_id: xq.trails.first.id)

# puts "adding activities to test bbq plan"
# Activity.create(trail_id: zache.trails.first.id, name: "Preparing to start fire", description: "Get the thongs and coal", date:Date.today, start_time: Time.now, end_time: Time.now + 3600)
# Activity.create(trail_id: zache.trails.first.id, name: "Cook the meats", description: "Marinate chicken, then skewer it, then put in on the fire!", date: Date.today, start_time: Time.now + 3600, end_time: Time.now + 3600 * 2)

# puts "adding activities to japan trip"
# Activity.create(trail_id: zache.trails.last.id, name: "Touchdown in Tokyo, check in hotel", description: "After the flight, head to capsule hotel to check in at Shinjuku", date: Date.new(2020, 3, 27), start_time: Time.now + 3600 * 6, end_time: Time.now + 3600 * 7)
# Activity.create(trail_id: zache.trails.last.id, name: "Shop anime district at Akihabara", description: "Shop at Akihabaras famous anime district", date: Date.new(2020, 3, 27), start_time: Time.now + 3600 * 3, end_time: Time.now + 3600 * 4)
# Activity.create(trail_id: zache.trails.last.id, name: "Ichiran Ramen at Akihabara", description: "Eat at Ichiran Ramen, the best of all times", date: Date.new(2020, 3, 28), start_time: Time.now, end_time: Time.now + 3600)
# Activity.create(trail_id: zache.trails.last.id, name: "Onsen bath at Oyus", description: "Relaxing soak at onsen is heavenly!", date: Date.new(2020, 3, 28), start_time: Time.now + 3600, end_time: Time.now + 3600 * 2)
# Activity.create(trail_id: zache.trails.last.id, name: "Eat Tsukemen at Tokyo Station", description: "There's a super good Tsukemen stall near Tokyo Station!", date: Date.new(2020, 3, 28), start_time: Time.now + 3600 * 6, end_time: Time.now + 3600 * 7)
# Activity.create(trail_id: zache.trails.last.id, name: "Climb Mt.Fuji", description: "I will be climbing Mt. Fuji for the whole day today!", date: Date.new(2020, 3, 29))
# Activity.create(trail_id: zache.trails.last.id, name: "Flight back to Singapore", description: "Can't bear to leave Japan, its a blast though!", date: Date.new(2020, 4, 8), start_time: Time.now + 3600 * 3, end_time: Time.now + 3600 * 10)

# puts "adding friendships"
# Friendship.create(sender: zache, receiver: nesh, confirmed: true)
# Friendship.create(sender: zache, receiver: xq, confirmed: true)
# Friendship.create(sender: xq, receiver: nesh, confirmed: true)
# Friendship.create(sender: zache, receiver: charmaine, confirmed: false)
# Friendship.create(sender: zache, receiver: yifan, confirmed: false)
# Friendship.create(sender: zache, receiver: michael, confirmed: false)
# Friendship.create(receiver: zache, sender: vibhuti, confirmed: false)
# Friendship.create(receiver: zache, sender: najihah, confirmed: false)
# Friendship.create(receiver: zache, sender: justin, confirmed: false)
# Friendship.create(receiver: zache, sender: dirk, confirmed: false)
# Friendship.create(receiver: zache, sender: prima, confirmed: false)
# Friendship.create(receiver: zache, sender: guido, confirmed: false)
# Friendship.create(receiver: zache, sender: rachael, confirmed: false)

puts "Seeding finished!"
