# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name:"Micheal Jackson")
Song.create(title: "I'm Bad", artist_id: 1)
Song.create(title: "Thriller", artist_id: 1)
Song.create(title: "Billie Jean", artist_id: 1)

Artist.create(name:"Adele")
Song.create(title: "Hello", artist_id: 2)
Song.create(title: "Rollin In The Deep", artist_id: 2)
Song.create(title: "Skyfall", artist_id: 2)

Artist.create(name:"Taylor Swift")
Song.create(title: "Bad Blood ", artist_id: 3)
Song.create(title: "22", artist_id: 3)
Song.create(title: "Love Story", artist_id: 3)