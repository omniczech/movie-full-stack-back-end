# Movie Review Rails API

This repo is the back end half of my [movie review client](https://github.com/omniczech/movie-review-client).

# Technologies used

* Ruby on Rails

# Planning and Development Process

To begin, I planned out an ERD which can be viewed [here](https://i.imgur.com/PjQVHH1.jpg). This is a simple one to many relationship. A user has_many movie_ratings and a movie_rating belongs_to a user.

I scaffolded the movie_rating resource, double checked the generated files and ran db:migrate. Once the tables were set, I began to write curl scripts for each function I'd need the front end to be able to execute against. I set the movie_rating controller to inherit from OpenReadController to allow users to see others' reviews as well as their own.

Later I found out that I needed to add another method to allow for GET requests to either be for the user making the request or reviews as a whole. I added this method and a new path for it to differentiate from the main GET function that returns all reviews.
