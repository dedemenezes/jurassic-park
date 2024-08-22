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


t_rex = Dinosaur.new(name: 'T-Rex', image_url: 'https://th.bing.com/th/id/R.56aaf833e15a562dcfd8205de8dfa294?rik=YUFhmtXPtMo9FQ&riu=http%3a%2f%2fwww.utahpeoplespost.com%2fwp-content%2fuploads%2f2015%2f11%2fT-rex-Could%e2%80%99ve-Eaten-You-In-One-Bite-Due-To-90-Degrees-Mouth-Opening.jpg&ehk=SfVzcD9BsCPiEz7%2fkhBVsi8wIhLuyGAZSNSFV%2bZe4sU%3d&risl=&pid=ImgRaw&r=0')
t_rex.park = park
t_rex.save!

bronto = Dinosaur.new(name: 'Brontosaurus', image_url: 'https://th.bing.com/th/id/R.5689896dcc0d7238b7af6d4001366587?rik=jWR2%2b%2b48LiuTHw&pid=ImgRaw&r=0')
bronto.park = park
bronto.save!


chores = ['feed', 'change water', 'go for a walk']

chores.each do |chore_name|
  Chore.create!(name: chore_name)
end
