class CreateMovieRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_ratings do |t|
      t.string :movie_title
      t.string :movie_genre
      t.integer :rating
      t.date :date_watched
      t.string :review
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
