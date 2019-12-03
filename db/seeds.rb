# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying activities..."
Activity.destroy_all
puts "destroying collabs..."
Collab.destroy_all
puts "destroying trails..."
Trail.destroy_all
puts "destroying users..."
User.destroy_all

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
Activity.create(trail_id: zache.trails.first.id, name: "Preparing to start fire", description: "Get the thongs and coal", start_time: Time.now, end_time: Time.now + 3600)
Activity.create(trail_id: zache.trails.first.id, name: "Cook the meats", description: "Marinate chicken, then skewer it, then put in on the fire!", start_time: Time.now + 3600, end_time: Time.now + 3600 * 2)
Activity.create(trail_id: zache.trails.last.id, name: "Preparing for Japan trip", description: "Create a travelling template, then add items to bring, then delegate to someone.", start_time: Time.now + 3600 * 6, end_time: Time.now + 3600 * 7)
Activity.create(trail_id: zache.trails.last.id, name: "Climb Mt. Fuji", description: "Create a hiking template, then add items to bring, then delegate to someone.", start_time: Time.now + 3600 * 3, end_time: Time.now + 3600 * 4)

puts "Seeding finished!"
