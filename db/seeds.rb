# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
users_csv = CSV.readlines("db/users.csv")
users_csv.shift
users_csv.each do |row|
  user = User.new
  user.email = row[1]
  user.password = row[2]
  user.name = row[3]
  user.profile = row[4]
  user.occupation = row[5]
  user.position = row[6]
  puts user.save!
end