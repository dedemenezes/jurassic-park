# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts 'Cleaning DB'
Park.destroy_all

puts 'Populating DB...'

park = Park.create!(name: 'Jurassic Park', banner_url: "https://th.bing.com/th/id/R.167c683b234a05b9c67bbcde10085091?rik=eDbZGfDZ3PmG9A&pid=ImgRaw&r=0")

puts "Created #{park.name}"
