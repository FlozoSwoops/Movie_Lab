# require 'httparty'
# require 'pp'
class MoviesController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
        @movies = Movies.all 
        render json: @movies
    end
    def show 
        @movie = Movies.find(params[:id])
        render json: @movie
    end
    def create
        @movie = Post.new(movie_params)
        
        @movie.save!
         
        @movies = @Movies.all
        render json: @movies

    private
    def movie_params
        params.require(:movie).permit(:name, :rating, :year, :pic)         
    end

    

end
