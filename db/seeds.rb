# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new( email: 'james.bond@example.com', name: 'James Bond')
user.save
user.client!

user = User.new( email: 'robin.wood@example.com', name: 'Robin Wood')
user.client!
user.save

user = User.new( email: 'john.rambo@example.com', name: 'John Rambo')
user.save
user.trainer!

user = User.new( email: 'darth.vader@example.com', name: 'Darth Vader')
user.save
user.trainer!
