# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB..."

Recipe.destroy_all

puts "Creating recipes..."

Recipe.create!(
  name: "Sheet Pan Salmon Broccoli and Potatoes",
  description: "Salmon and roasted tenderstem broccoli, with a side of roasted potatoes",
  image_url: "https://www.laurafuentes.com/wp-content/uploads/2023/03/Sheet-pan-salmon_post_01-1024x661.jpg",
  rating: 7.8)

  Recipe.create!(
    name: "Apple Crumble",
    description: "Granny Smith apples and a buttery crumb topping with cinnamon and nutmeg dessert",
    image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/the-best-apple-crumble-1fb6036-scaled.jpg?quality=90&webp=true&resize=750,681",
    rating: 9.1)

  Recipe.create!(
    name: "Chicken Stir-fry",
    description: "tasty chicken and veggie stir fry - a quick mid-week meal with a kick of chilli heat",
    image_url: "https://www.kitchensanctuary.com/wp-content/uploads/2016/03/Quick-Chicken-Stir-Fry-tall-FS-42-1024x1536.webp",
    rating: 8.6)

  Recipe.create!(
    name: "Egg fried rice",
    description: "An easy egg fried rice recipe to make with instant rice. It's easy to customize with other vegetables or leftover roast meat",
    image_url: "https://www.allrecipes.com/thmb/WO8IldHo7VhgAAm32DdzKYkGJ34=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/6751001-egg-fried-rice-Mariya-Tkachenko-4x3-1-0a5504e18cea49c2bf4419799bd50ad9.jpg",
    rating: 6.3)

puts "Done! #{Recipe.all.count} recipes created"
