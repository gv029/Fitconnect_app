# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new( email: 'james.bond@example.com', name: 'James Bond', bio: 'This is my bio about me', certifications: 2)
user.save
user.client!

user = User.new( email: 'robin.wood@example.com', name: 'Robin Wood', bio: 'This is my bio about myself.', certifications: 3)
user.client!
user.save

user = User.new( email: 'john.rambo@example.com', name: 'John Rambo', bio: 'This is my story of being a trainer.', certifications: 4)
user.save
user.trainer!

user = User.new( email: 'darth.vader@example.com', name: 'Darth Vader', bio: 'This is my bio.', certifications: 5)
user.save
user.trainer!

Answer.create([
  { title: 'Bodybuilding', group: 'training_goals' },
  { title: 'Weight Loss', group: 'training_goals' },
  { title: 'General Health And Well Being', group: 'training_goals' },
  { title: 'Rehabilition', group: 'training_goals' },
  { title: 'Athletic Development', group: 'training_goals' }
])
