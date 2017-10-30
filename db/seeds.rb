# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
User.destroy_all

5.times do
    users << User.create(
        email: FFaker::Internet.email,
        password: 'blahblah',
        password_confirmation: 'blahblah'
    )
  end

  movies << Movie.create( name: "Tremmors", rating: "R", year: 1999)
  movies << Movie.create( name: "It", rating: "R", year: 1991)
  movies << Movie.create( name: "Ghosts of Mars", rating: "R", year: 2001)
  