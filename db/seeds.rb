# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Faker::Name.name                      #=> "Christophe Bartell"
# Faker::Internet.password              #=> "Vg5mSvY1UeRg7"
# Faker::Internet.email                 #=> "eliza@mann.test"
# Faker::Address.full_address           #=> "5479 William Way, East Sonnyhaven, LA 63637"
# Faker::Markdown.emphasis              #=> "Quo qui aperiam. Amet corrupti distinctio. Sit quia *dolor.*"
# Faker::Lorem.paragraph                #=> "Recusandae minima consequatur. Expedita sequi blanditiis. Ut fuga et."
# Faker::Alphanumeric.alpha(number: 10) #=> "zlvubkrwga"
# Faker::ProgrammingLanguage.name       #=> "Ruby"
#
10.times do
  article = Article.new(title: Faker::ProgrammingLanguage.name, content: Faker::Lorem.paragraph)
  article.save!
end
