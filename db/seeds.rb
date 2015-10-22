# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
99.times do |n|
  full_name = Faker::Name.name
  email_address = "example-#{n+1}@example.com"
  phone_number = Faker::PhoneNumber.phone_number
  notes = Faker::Lorem.paragraph
  Customer.create(full_name: full_name,
                  email_address: email_address,
                  phone_number: phone_number,
                  notes: notes)
end
