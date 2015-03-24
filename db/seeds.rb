# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

		fight_club = 	Movie.create(
			title: "Fight Club",
			thumburl: "/assets/thumbs_movies/thumb_fight-club.jpg",
			director: "David Fincher",
			year: "1999"
		)
		pulp_fiction = 	Movie.create(
			title: "Pulp Fiction",
			thumburl: "/assets/thumbs_movies/thumb_pulp-fiction.jpg",
			director: "Quentin Tarantino",
			year: "1994"
		)
		inception = 	Movie.create(
			title: "Inception",
			thumburl: "/assets/thumbs_movies/thumb_inception.jpg",
			director: "Christopher Nolan",
			year: "2010"
		)
									
		
		