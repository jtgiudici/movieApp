class MoviesController < ApplicationController
	
  def index
		# byebug
		# @movies = Movie.search(params[:search])
		@configuration = Tmdb::Configuration.new
		@movies = Tmdb::Movie.popular
  end

  def show
		@configuration = Tmdb::Configuration.new
		@movie = Tmdb::Movie.detail(params[:id])
  end

  def new
		@movie = Movie.new
  end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to(:actions => 'index')
		else
			render ('new')
		end
	end

  def edit
		@movie = Movie.find(params[:id])
  end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update_attributes(movie_params)
			redirect_to(:action => 'show', :id => @movie.id)
		else
			render('index')
		end
	end

  def delete
		@movie = Movie.find(params[:id])
  end

	def destroy
		Movie.find(params[:id]).destroy
		redirect_to(:action => 'index')
	end

	private
	def movie_params
		params.require(:movie).permit(:title, :thumburl, :director, :year, :genre, :rating)
	end
end
