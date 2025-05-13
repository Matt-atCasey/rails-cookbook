# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

puts "🧹 Cleaning recipes..."
Recipe.destroy_all

puts "🍳 Creating recipes..."
recipes = Recipe.create!([
  {
    name:        "Classic Pancakes",
    description: "Light and fluffy pancakes perfect for a weekend breakfast.",
    rating:      4.5
  },
  {
    name:        "Spaghetti Carbonara",
    description: "Creamy, cheesy pasta with crispy pancetta and freshly cracked pepper.",
    rating:      5.0
  },
  {
    name:        "Avocado Toast",
    description: "Toasted sourdough topped with smashed avocado, sea salt, and chili flakes.",
    rating:      3.8
  },
  {
    name:        "Chocolate Chip Cookies",
    description: "Crispy on the edges, gooey in the center, loaded with semi-sweet chips.",
    rating:      4.9
  }
])

puts "✅ Created #{recipes.count} recipes."
