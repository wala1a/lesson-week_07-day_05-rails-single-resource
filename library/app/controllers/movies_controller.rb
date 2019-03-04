class MoviesController < ApplicationController
    def index
        #here ask model to get some data
         @movies = Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def new
    end
    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movie_path
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id]) 
        if @movie.update(movie_params)
            redirect_to movie_path
        else
            render 'edit'
        end
    end

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to movies_path
        else
            render action: "new"
        end

    end
        
        def movie_params
            params.require(:movie).permit(:title, :director )
        end
end
