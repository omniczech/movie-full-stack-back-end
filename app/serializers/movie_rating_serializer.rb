class MovieRatingSerializer < ActiveModel::Serializer
  attributes :id, :movie_title, :movie_genre, :rating, :date_watched, :review
  has_one :user
end
