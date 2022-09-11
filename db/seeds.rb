# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
#
list = List.create(name: Faker::Hipster.sentence)

10.times do
  list.tasks.create(
    name: Faker::Hipster.sentence,
    completed_at: Faker::Boolean.boolean(true_ratio: 0.2) ? Time.current : nil 
  )
end
