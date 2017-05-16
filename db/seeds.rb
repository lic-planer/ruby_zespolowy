# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Director.destroy_all

File.open("db/directors.txt", "r") do |f|
  f.each_line do |line|
    id, name, last_name, date_birth = line.chomp.split(";")
    Director.create!(:id => id, :name => name, :last_name => last_name, :date_birth => date_birth)
  end
end

Type.destroy_all

File.open("db/types.txt", "r") do |f|
  f.each_line do |line|
    id, type = line.chomp.split(";")
    Type.create!(:id => id, :name => type)
  end
end


Movie.destroy_all

File.open("db/movies.txt", "r") do |f|
  f.each_line do |line|
    #title, country, year, image, directorName, directorLastName, type = line.chomp.split(";")
    #@director = Director.find(params[:name => directorName, :last_name => directorLastName])
    #@type = Type.find(params[:name => type])
    #Movie.create!(:title => title, :country => country, :year => year, :image => image, :director_id => @director.id, :type_id => @type.id)
    title, country, year, image, director_id, type_id, trailer = line.chomp.split(";")
    Movie.create!(:title => title, :country => country, :year => year, :image => image, :director_id => director_id, :type_id => type_id, :trailer => trailer)
  end
end
