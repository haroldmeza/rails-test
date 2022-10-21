# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

article = Article.new(title: "Test Title 2", body: "Test body 2")
article.save

article = Article.new(title: "Test Title 3", body: "Test body 3")
article.save
