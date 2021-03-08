# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
15.times do |index|
  user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: "test#{index}@test.com",
      password: "123456"
  )
  puts "Created User #{index}"
end
puts "Users created"

