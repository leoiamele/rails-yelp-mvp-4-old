require 'faker'

puts "Deleting restaurants"
Restaurant.destroy_all

puts 'Creating 12 fake restaurants...'
12.times do
  restaurant = Restaurant.new(
    name:    Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
  rand(3..12).times do
    reviews = Review.new(
      content: Faker::Restaurant.description,
      rating: rand(1..5),
      restaurant: restaurant
      )
  reviews.save!
  end
end
puts 'Finished!'