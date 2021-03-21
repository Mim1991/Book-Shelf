
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

