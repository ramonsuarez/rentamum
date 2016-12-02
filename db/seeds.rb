# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

MotherListing.destroy_all
User.destroy_all

10.times do
  MotherListing.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    price: Faker::Commerce.price,
    location: Faker::Pokemon.location,
    description: Faker::Lorem.paragraph
  )
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    address: Faker::Address.street_address + ", " + Faker::Address.state,
    phone: Faker::PhoneNumber.phone_number
  )
end

Skill.create(name: "Good listener")
Skill.create(name: "Cooks really well")
Skill.create(name: "Can be hugged and give hugs")
Skill.create(name: "Light cleaning service")
Skill.create(name: "Yells if needed")
Skill.create(name: "Good shoulder to cry on")
Skill.create(name: "Gives advice")
Skill.create(name: "Change babies and toddlers diapers")
Skill.create(name: "Deals with sick ('unwell people'!!)")
Skill.create(name: "Can give mother love (as in 'mother love'!!)")


