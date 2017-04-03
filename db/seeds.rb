# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

File.open("db/movies.txt", "r") do |f|
  f.each_line do |line|
    title, country, year = line.chomp.split(";")
    Movie.create!(:title => title, :country => country, :year => year)
  end
end
