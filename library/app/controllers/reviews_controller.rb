class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create(review_params)
          redirect_to movies_path(@movie)
  end

  def destroy
  end
  
  private

  def review_params
    params.require(:review).permit(:reviewer, :body, :rating)
  end
end
