# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

Restaurant.create!(
  name: "Epicure",
  address: "75008 Paris",
  phone_number: "+33 1 23 45 67 89",
  category: "french"
)

Restaurant.create!(
  name: "Sushi Dai",
  address: "Tokyo, Tsukiji Market",
  phone_number: "+81 90 1234 5678",
  category: "japanese"
)

Restaurant.create!(
  name: "Il Forno",
  address: "Rome, Via Napoli 10",
  phone_number: "+39 06 123 4567",
  category: "italian"
)

Restaurant.create!(
  name: "Great Wall",
  address: "Beijing, Dongcheng",
  phone_number: "+86 10 1234 5678",
  category: "chinese"
)

Restaurant.create!(
  name: "Belgian Bistro",
  address: "Brussels Center",
  phone_number: "+32 2 123 4567",
  category: "belgian"
)

