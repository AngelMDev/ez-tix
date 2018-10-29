# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies = Movie.create([
    { name: 'Star Wars', poster_url: "https://i.pinimg.com/originals/08/f1/d3/08f1d38cf493d5041da3424aeeb0e407.jpg", description: "The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 (Kenny Baker) and C-3PO (Anthony Daniels) to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and justice to the Galaxy." }, 
    { name: 'Lord of the Rings', poster_url: "http://imgc.allpostersimages.com/img/posters/lord-of-the-rings-fellowship-of-the-ring_u-L-F5602Z0.jpg", description: "The future of civilization rests in the fate of the One Ring, which has been lost for centuries. Powerful forces are unrelenting in their search for it. But fate has placed it in the hands of a young Hobbit named Frodo Baggins (Elijah Wood), who inherits the Ring and steps into legend. A daunting task lies ahead for Frodo when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount Doom where it was forged." },
    { name: 'Back to the Future', poster_url: "https://images-na.ssl-images-amazon.com/images/I/51pCtX2StZL.jpg", description: "Small-town California teen Marty McFly (Michael J. Fox) is thrown back into the '50s when an experiment by his eccentric scientist friend Doc Brown (Christopher Lloyd) goes awry. Traveling through time in a modified DeLorean car, Marty encounters young versions of his parents (Crispin Glover, Lea Thompson), and must make sure that they fall in love or he'll cease to exist. Even more dauntingly, Marty has to return to his own time and save the life of Doc Brown." },
    { name: 'Terminator 2', poster_url: 'http://www.gstatic.com/tv/thumb/v22vodart/13308/p13308_v_v8_ab.jpg', description: "In this sequel set eleven years after 'The Terminator', young John Connor (Edward Furlong), the key to civilization's victory over a future robot uprising, is the target of the shape-shifting T-1000 (Robert Patrick), a Terminator sent from the future to kill him. Another Terminator, the revamped T-800 (Arnold Schwarzenegger), has been sent back to protect the boy. As John and his mother (Linda Hamilton) go on the run with the T-800, the boy forms an unexpected bond with the robot." },
    { name: 'Forrest Gump', poster_url: 'http://www.gstatic.com/tv/thumb/v22vodart/15829/p15829_v_v8_ab.jpg', description: "Slow-witted Forrest Gump (Tom Hanks) has never thought of himself as disadvantaged, and thanks to his supportive mother (Sally Field), he leads anything but a restricted life. Whether dominating on the gridiron as a college football star, fighting in Vietnam or captaining a shrimp boat, Forrest inspires people with his childlike optimism. But one person Forrest cares about most may be the most difficult to save -- his childhood love, the sweet but troubled Jenny (Robin Wright)." },
    { name: 'Jurassic Park', poster_url: 'https://upload.wikimedia.org/wikipedia/en/e/e7/Jurassic_Park_poster.jpg', description: "In Steven Spielberg's massive blockbuster, paleontologists Alan Grant (Sam Neill) and Ellie Sattler (Laura Dern) and mathematician Ian Malcolm (Jeff Goldblum) are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA. While the park's mastermind, billionaire John Hammond (Richard Attenborough), assures everyone that the facility is safe, they find out otherwise when various ferocious predators break free and go on the hunt." }
  ])

  auditorium1 = Auditorium.create(name: "1", capacity: 50)
  auditorium2 = Auditorium.create(name: "2", capacity: 30)
  auditorium3 = Auditorium.create(name: "3", capacity: 65)
  aud_test = Auditorium.create(name: "test", capacity: 3)

  showing1 = Showing.create(datetime: Date.new(2018, 11, 01), seats_taken: 50, auditorium_id: 1, movie_id: 1)
  showing2 = Showing.create(datetime: Date.new(2018, 11, 01), seats_taken: 25, auditorium_id: 2, movie_id: 2)
  showing3 = Showing.create(datetime: Date.new(2018, 10, 31), seats_taken: 15, auditorium_id: 3, movie_id: 3)
  showing4 = Showing.create(datetime: Date.new(2018, 11, 01), seats_taken: 0, auditorium_id: 1, movie_id: 4)
  showing5 = Showing.create(datetime: Date.new(2018, 11, 01), seats_taken: 0, auditorium_id: 2, movie_id: 5)
  showing5 = Showing.create(datetime: Date.new(2018, 11, 02), seats_taken: 0, auditorium_id: 3, movie_id: 6)
  showing6 = Showing.create(datetime: Date.new(2018, 10, 31), seats_taken: 0, auditorium_id: 1, movie_id: 1)
  showing7 = Showing.create(datetime: Date.new(2018, 11, 03), seats_taken: 0, auditorium_id: 2, movie_id: 2)

  order1 = Order.create(name: "Joe Doe", email: "joe@doe.com", credit_card: "1234123412341234", expiration_date: "06/26", showing_id: 1)
  order2 = Order.create(name: "Joe Doe", email: "joe@doe.com", credit_card: "1234123412341234", expiration_date: "06/26", showing_id: 2)
  order3 = Order.create(name: "Joe Doe", email: "joe@doe.com", credit_card: "1234123412341234", expiration_date: "06/26", showing_id: 3)
  order4 = Order.create(name: "Joe Doe", email: "joe@doe.com", credit_card: "1234123412341234", expiration_date: "06/26", showing_id: 4)
  order5 = Order.create(name: "Joe Doe", email: "joe@doe.com", credit_card: "1234123412341234", expiration_date: "06/26", showing_id: 5)
