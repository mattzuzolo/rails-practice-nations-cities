# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


nyc = Town.new(name: "NYC", country: "USA", native_language_english: true)
chicago = Town.new(name: "Chicago", country: "USA", native_language_english: true)

montreal = Town.new(name: "Montreal", country: "Canada", native_language_english: false)
toronto = Town.new(name: "Toronto", country: "Montreal", native_language_english: true)
