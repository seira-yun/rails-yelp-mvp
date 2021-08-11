puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_address,
    phone_number:Faker::PhoneNumber.phone_number_with_country_code,
    category: Restaurant::CATEGORY.sample
  )
end
puts "Created #{Restaurant.count} restaurants."
