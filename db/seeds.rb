# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying ItemCategories..."
ItemCategory.destroy_all
puts "Destroying Categories..."
Category.destroy_all
puts "Destroying Items..."
Item.destroy_all
puts "Destroying trails...along with lists (list_items, delegations), activities, and collabs"
Trail.destroy_all
puts "Destroying friendships..."
Friendship.destroy_all
puts "Destroying users..."
User.destroy_all

puts "Creating 8 Categories..."
categories_array = ["Custom", "Travelling", "Day at the Beach", "Mountain Climbing", "Hiking", "Chalet", "Outdoor Camping", "BBQ"]
categories_array.each { |string| Category.create!(name: string) }

puts "Creating 20 Items and their ItemCategories... "
one = Item.new(name: "Passport")
one.save
ItemCategory.create!(item: one, category: Category.find_by(name: "Travelling"))
two = Item.new(name: "Travel Adaptor")
two.save
ItemCategory.create!(item: two, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: two, category: Category.find_by(name: "Chalet"))
three = Item.new(name: "Day Backpack")
three.save
ItemCategory.create!(item: three, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: three, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: three, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: three, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: three, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: three, category: Category.find_by(name: "Outdoor Camping"))
four = Item.new(name: "Travel Bottle")
four.save
ItemCategory.create!(item: four, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: four, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: four, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: four, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: four, category: Category.find_by(name: "Outdoor Camping"))
five = Item.new(name: "Multi USB charger")
five.save
ItemCategory.create!(item: five, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: five, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: five, category: Category.find_by(name: "BBQ"))
six = Item.new(name: "Toiletries")
six.save
ItemCategory.create!(item: six, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: six, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: six, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: six, category: Category.find_by(name: "Outdoor Camping"))
seven = Item.new(name: "Slippers")
seven.save
ItemCategory.create!(item: seven, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: seven, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: seven, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: seven, category: Category.find_by(name: "Outdoor Camping"))
ItemCategory.create!(item: seven, category: Category.find_by(name: "BBQ"))
eight = Item.new(name: "Sweater")
eight.save
ItemCategory.create!(item: eight, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: eight, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: eight, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: eight, category: Category.find_by(name: "Outdoor Camping"))
nine = Item.new(name: "Power Bank")
nine.save
ItemCategory.create!(item: nine, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: nine, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: nine, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: nine, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: nine, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: nine, category: Category.find_by(name: "Outdoor Camping"))
ItemCategory.create!(item: nine, category: Category.find_by(name: "BBQ"))
ten = Item.new(name: "Mosquito Repellent")
ten.save
ItemCategory.create!(item: ten, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: ten, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: ten, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: ten, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: ten, category: Category.find_by(name: "Outdoor Camping"))
eleven = Item.new(name: "Hand Sanitizer")
eleven.save
ItemCategory.create!(item: eleven, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: eleven, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: eleven, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: eleven, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: eleven, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: eleven, category: Category.find_by(name: "Outdoor Camping"))
ItemCategory.create!(item: eleven, category: Category.find_by(name: "BBQ"))
twelve = Item.new(name: "Camera")
twelve.save
ItemCategory.create!(item: twelve, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: twelve, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: twelve, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: twelve, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: twelve, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: twelve, category: Category.find_by(name: "Outdoor Camping"))
ItemCategory.create!(item: twelve, category: Category.find_by(name: "BBQ"))
thirteen = Item.new(name: "Beach Towel")
thirteen.save
ItemCategory.create!(item: thirteen, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: thirteen, category: Category.find_by(name: "Chalet"))
forteen = Item.new(name: "Beach Toys")
forteen.save
ItemCategory.create!(item: forteen, category: Category.find_by(name: "Day at the Beach"))
fifteen = Item.new(name: "Sunscreen")
fifteen.save
ItemCategory.create!(item: fifteen, category: Category.find_by(name: "Day at the Beach"))
ItemCategory.create!(item: fifteen, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: fifteen, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: fifteen, category: Category.find_by(name: "Outdoor Camping"))
sixteen = Item.new(name: "Portable Stove")
sixteen.save
ItemCategory.create!(item: sixteen, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: sixteen, category: Category.find_by(name: "Outdoor Camping"))
ItemCategory.create!(item: sixteen, category: Category.find_by(name: "BBQ"))
seventeen = Item.new(name: "Utensils")
seventeen.save
ItemCategory.create!(item: seventeen, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: seventeen, category: Category.find_by(name: "Outdoor Camping"))
ItemCategory.create!(item: seventeen, category: Category.find_by(name: "BBQ"))
eighteen = Item.new(name: "Dry Rations")
eighteen.save
ItemCategory.create!(item: eighteen, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: eighteen, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: eighteen, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: eighteen, category: Category.find_by(name: "Outdoor Camping"))
nineteen = Item.new(name: "Lighter")
nineteen.save
ItemCategory.create!(item: nineteen, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: nineteen, category: Category.find_by(name: "Mountain Climbing"))
ItemCategory.create!(item: nineteen, category: Category.find_by(name: "Hiking"))
ItemCategory.create!(item: nineteen, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: nineteen, category: Category.find_by(name: "Outdoor Camping"))
ItemCategory.create!(item: nineteen, category: Category.find_by(name: "BBQ"))
twenty = Item.new(name: "Torchlight")
twenty.save
ItemCategory.create!(item: twenty, category: Category.find_by(name: "Travelling"))
ItemCategory.create!(item: twenty, category: Category.find_by(name: "Chalet"))
ItemCategory.create!(item: twenty, category: Category.find_by(name: "Outdoor Camping"))

puts "creating all lewagon peeps"
zache = User.create(name: "Zache", email: "zache@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575712557/zache_ne0rfi.jpg')
nesh = User.create(name: "Nesh", email: "nesh@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017254/ry3obyvvadzq6ho3vzjx.jpg')
xq = User.create(name: "Xiu Qi", email: "xq@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017227/ukfmuiph7mjxbkhucmqg.jpg')
yifan = User.create(name: "Yi Fan", email: "yifan@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017228/u9gkbniqnieh2jqxp9nk.jpg')
michael = User.create(name: "Michael", email: "mike@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017267/erjc7psxbkpo8b6m3hxu.jpg')
charmaine = User.create(name: "Charmaine", email: "charms@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017275/zopcvs0bam6kymwthtia.jpg')
vibhuti = User.create(name: "Vibhuti", email: "vib@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1574957215/sa8ulwd6at5s8iwclnrn.jpg')
najihah = User.create(name: "Najihah", email: "naj@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1574957227/maqq5nioajx59rpnj0e7.jpg')
dirk = User.create(name: "Dirk", email: "dirk@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017238/rus7yjkpb7eaqy9vuuca.jpg')
prima = User.create(name: "Prima", email: "prima@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017217/j1ojkjhh7evahh6rvg5f.jpg')
guido = User.create(name: "Guido", email: "guido@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017253/ojwyd1jkye7x7nuipwv8.jpg')
rachael = User.create(name: "Rachael", email: "rachael@lewagon.com", password: "password", remote_photo_url: 'https://res.cloudinary.com/be6sky/image/upload/v1575017242/uadschvxy8avbuvlwp2b.jpg')

puts "creating trails"
# Trail.create(user_id: zache.id, name: "Barbeque Plan", start_date: Date.new(2019, 12, 8), end_date: Date.new(2019, 12, 8))
# Trail.create(user_id: zache.id, name: "Japan Trip", start_date: Date.new(2020, 3, 27), end_date: Date.new(2020, 4, 8))
Trail.create(user_id: nesh.id, name: "Chalet Plan", start_date: Date.new(2020, 1, 9), end_date: Date.new(2020, 1, 11))
# Trail.create(user_id: xq.id, name: "School camping trip", start_date: Date.new(2019, 12, 26), end_date: Date.new(2019, 12, 30))

puts "adding collaborators"
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
Collab.create(user_id: zache.id, trail_id: nesh.trails.first.id)
# Collab.create(user_id: zache.id, trail_id: xq.trails.first.id)

puts "adding activities to test bbq plan"
# Activity.create(trail_id: zache.trails.first.id, name: "Preparing to start fire", description: "Get the thongs and coal", date:Date.today, start_time: Time.now, end_time: Time.now + 3600)
# Activity.create(trail_id: zache.trails.first.id, name: "Cook the meats", description: "Marinate chicken, then skewer it, then put in on the fire!", date: Date.today, start_time: Time.now + 3600, end_time: Time.now + 3600 * 2)

puts "adding activities to japan trip"
# Activity.create(trail_id: zache.trails.last.id, name: "Touchdown in Tokyo, check in hotel", description: "After the flight, head to capsule hotel to check in at Shinjuku", date: Date.new(2020, 3, 27), start_time: Time.now + 3600 * 6, end_time: Time.now + 3600 * 7)
# Activity.create(trail_id: zache.trails.last.id, name: "Shop anime district at Akihabara", description: "Shop at Akihabaras famous anime district", date: Date.new(2020, 3, 27), start_time: Time.now + 3600 * 3, end_time: Time.now + 3600 * 4)
# Activity.create(trail_id: zache.trails.last.id, name: "Ichiran Ramen at Akihabara", description: "Eat at Ichiran Ramen, the best of all times", date: Date.new(2020, 3, 28), start_time: Time.now, end_time: Time.now + 3600)
# Activity.create(trail_id: zache.trails.last.id, name: "Onsen bath at Oyus", description: "Relaxing soak at onsen is heavenly!", date: Date.new(2020, 3, 28), start_time: Time.now + 3600, end_time: Time.now + 3600 * 2)
# Activity.create(trail_id: zache.trails.last.id, name: "Eat Tsukemen at Tokyo Station", description: "There's a super good Tsukemen stall near Tokyo Station!", date: Date.new(2020, 3, 28), start_time: Time.now + 3600 * 6, end_time: Time.now + 3600 * 7)
# Activity.create(trail_id: zache.trails.last.id, name: "Climb Mt.Fuji", description: "I will be climbing Mt. Fuji for the whole day today!", date: Date.new(2020, 3, 29))
# Activity.create(trail_id: zache.trails.last.id, name: "Flight back to Singapore", description: "Can't bear to leave Japan, its a blast though!", date: Date.new(2020, 4, 8), start_time: Time.now + 3600 * 3, end_time: Time.now + 3600 * 10)

puts "adding friendships"
Friendship.create(sender: zache, receiver: nesh, confirmed: true)
# Friendship.create(sender: zache, receiver: xq, confirmed: true)
Friendship.create(sender: xq, receiver: nesh, confirmed: true)
Friendship.create(sender: zache, receiver: charmaine, confirmed: false)
Friendship.create(sender: zache, receiver: yifan, confirmed: false)
Friendship.create(sender: zache, receiver: michael, confirmed: false)
Friendship.create(receiver: zache, sender: yifan, confirmed: false)
Friendship.create(receiver: zache, sender: vibhuti, confirmed: false)
Friendship.create(receiver: zache, sender: najihah, confirmed: false)
Friendship.create(receiver: zache, sender: dirk, confirmed: false)
Friendship.create(receiver: zache, sender: prima, confirmed: false)
Friendship.create(receiver: zache, sender: guido, confirmed: false)
Friendship.create(receiver: zache, sender: rachael, confirmed: false)

puts "Seeding finished!"
