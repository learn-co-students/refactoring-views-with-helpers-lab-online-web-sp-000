# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jay_z = Artist.create(name: "Jay-Z")
ninety_nine_problems = Song.create(title: "99 Problems")
ninety_nine_problems.artist = jay_z
ninety_nine_problems.save

Song.create(title: "Redbone")
