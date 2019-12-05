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
puts "Destroying ListItem"
ListItem.destroy_all
puts "Destroying Items..."
Item.destroy_all
puts "destroying activities..."
Activity.destroy_all
puts "destroying collabs..."
Collab.destroy_all
puts "destroying trails..."
Trail.destroy_all
puts "destroying users..."
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

puts "creating 3 users Zache, Nesh and Xiu Qi"
zache = User.create(name: "Zache", email: "1@lewagon.com", password: "password")
nesh = User.create(name: "Nesh", email: "2@lewagon.com", password: "password")
xq = User.create(name: "Xiu Qi", email: "3@lewagon.com", password: "password")

puts "creating 2 trails under Zache"
Trail.create(user_id: zache.id, name: "Barbeque Plan", start_date: Date.new(2019, 12, 8), end_date: Date.new(2019, 12, 8))
Trail.create(user_id: zache.id, name: "Japan Trip", start_date: Date.new(2019, 12, 3), end_date: Date.new(2019, 12, 11))

puts "adding collaborators to trail 1 and 2"
Collab.create(user_id: nesh.id, trail_id: zache.trails.first.id)
Collab.create(user_id: xq.id, trail_id: zache.trails.first.id)
Collab.create(user_id: xq.id, trail_id: zache.trails.last.id)

puts "adding activities to trail 1 and 2"
Activity.create(trail_id: zache.trails.first.id, name: "Preparing to start fire", description: "Get the thongs and coal", date:Date.today, start_time: Time.now, end_time: Time.now + 3600)
Activity.create(trail_id: zache.trails.first.id, name: "Cook the meats", description: "Marinate chicken, then skewer it, then put in on the fire!", date:Date.today, start_time: Time.now + 3600, end_time: Time.now + 3600 * 2)
Activity.create(trail_id: zache.trails.last.id, name: "Preparing for Japan trip", description: "Create a travelling template, then add items to bring, then delegate to someone.", date:Date.today, start_time: Time.now + 3600 * 6, end_time: Time.now + 3600 * 7)
Activity.create(trail_id: zache.trails.last.id, name: "Climb Mt. Fuji", description: "Create a hiking template, then add items to bring, then delegate to someone.", date:Date.today, start_time: Time.now + 3600 * 3, end_time: Time.now + 3600 * 4)

puts "Seeding finished!"
