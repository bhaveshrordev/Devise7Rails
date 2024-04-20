# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  Message.create(body: Faker::Books::Dune.quote)
end

5.times do
  Customer.create(email: Faker::Internet.email(domain: 'tester.com'), name: Faker::Name.name, role: 'retailer')
  Customer.create(email: Faker::Internet.email(domain: 'tester.com'), name: Faker::Name.name, role: 'wholesaler')
end
