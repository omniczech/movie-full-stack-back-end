class MovieRatingsController < OpenReadController
  before_action :set_movie_rating, only: [:show, :update, :destroy]

  # GET /movie_ratings
  def index
    @movie_ratings = MovieRating.all

    render json: @movie_ratings
  end

  # GET /movie_ratings/1
  def show
    render json: @movie_rating
  end

  # POST /movie_ratings
  def create
    @movie_rating = current_user.movie_ratings.build(movie_rating_params)

    if @movie_rating.save
      render json: @movie_rating, status: :created, location: @movie_rating
    else
      render json: @movie_rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_ratings/1
  def update
    if @movie_rating.update(movie_rating_params)
      render json: @movie_rating
    else
      render json: @movie_rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_ratings/1
  def destroy
    @movie_rating.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_rating
      @movie_rating = MovieRating.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_rating_params
      params.require(:movie_rating).permit(:movie_title, :movie_genre, :rating, :date_watched, :review, :user_id)
    end
end
