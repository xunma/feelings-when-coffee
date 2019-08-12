# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "cleaned up all existing users"

user_arr = [
  {
    email: 'amy@gmail.com',
    username: 'amy',
    password: 12345678
  },
  {
    email: 'rita@gmail.com',
    username: 'rita',
    password: 12345678
  }
]

users = User.create(user_arr)
puts "users created!"

Feeling.destroy_all
puts "cleaned up all existing feelings"

feeling_arr = [
  {
    coffee_shop: 'love concept coffee',
    wifi_password: 'DONOTFEEDMYDOG',
    music: 'songs of Carla Bruni',
    drink: 'latte with boba',
    date: 'last day of july',
    mood: 'pink',
    user: User.first
  },
  {
    coffee_shop: 'hidden track',
    wifi_password: 'ilovehiddentrack',
    music: 'not sure',
    drink: 'flat white, as always',
    date: 'a sunny friday',
    mood: 'cute lovely peaceful',
    user: User.first
  },
  {
    coffee_shop: 'fumi',
    wifi_password: 'noneedforwifipassword',
    music: 'billboard top 100 from ten years ago',
    drink: 'cold brew',
    date: 'blue monday',
    mood: 'hmmmm',
    user: User.last
  }
]

feelings = Feeling.create(feeling_arr)
puts "feelings created!"
