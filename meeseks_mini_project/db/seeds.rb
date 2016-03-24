# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Search.delete_all
Friend.delete_all

Search.create(bar_name: "bar", rating: 5.0, review: "Great", user_id: 1)
Search.create(bar_name: "other bar", rating: 4.4, review: "Decent", user_id: 1)

Friend.create(name: "George", email: "george@george.com", user_id: 1)