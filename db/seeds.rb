# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  auditorium1 = Auditorium.create(capacity: 50)
  showtime1 = Showtime.create(datetime: Time.now, seats_taken: 5, auditorium_id: 1, movie_id: 1)
