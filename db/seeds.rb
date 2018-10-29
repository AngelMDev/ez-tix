# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies = Movie.create([{ name: 'Star Wars', poster_url: "https://i.pinimg.com/originals/08/f1/d3/08f1d38cf493d5041da3424aeeb0e407.jpg" }, { name: 'Lord of the Rings', poster_url: "http://imgc.allpostersimages.com/img/posters/lord-of-the-rings-fellowship-of-the-ring_u-L-F5602Z0.jpg" }])
  auditorium1 = Auditorium.create(capacity: 50)
  showing1 = Showing.create(datetime: Time.current, seats_taken: 5, auditorium_id: 1, movie_id: 1)
