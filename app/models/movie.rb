class Movie < ApplicationRecord
# include HTTParty
# base uri 'http://www.omdbapi.com/?apikey=d31f1a94&'

has_many :favorite_movies
has_many :users through :favorite_movies

attr_accessor :title, :release_year, :rating
end
