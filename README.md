# Movie Review Rails API

This repo is the back end half of my [movie review client](https://github.com/omniczech/movie-review-client).

[Front End](https://omniczech.github.io/movie-review-client/)

[Back End](https://movie-full-stack-rails.herokuapp.com/)

# Technologies used

-   Ruby on Rails

# Planning and Development Process

To begin, I planned out an ERD which can be viewed [here](https://i.imgur.com/PjQVHH1.jpg). This is a simple one to many relationship. A user has_many movie_ratings and a movie_rating belongs_to a user.

I scaffolded the movie_rating resource, double checked the generated files and ran db:migrate. Once the tables were set, I began to write curl scripts for each function I'd need the front end to be able to execute against. I set the movie_rating controller to inherit from OpenReadController to allow users to see others' reviews as well as their own.

Later I found out that I needed to add another method to allow for GET requests to either be for the user making the request or reviews as a whole. I added this method and a new path for it to differentiate from the main GET function that returns all reviews.

# End Points


| Verb   | URI Pattern        | Controller#Action        |
| ------ | ------------------ | ------------------------ |
| POST   | /sign-up           | users#signup             |
| POST   | /sign-in           | users#signin             |
| DELETE | /sign-out          | users#signout            |
| UPDATE | /change-password   | users#changepw           |
| POST   | /movie_ratings     | movie_ratings#create     |
| GET    | /movie_ratings     | movie_ratings#index      |
| GET    | /movie_ratings/:id | movie_ratings#show       |
| DELETE | /movie_ratings/:id | movie_ratings#destroy    |
| UPDATE | /movie_ratings/:id | movie_ratings#update     |
| GET    | /user-ratings      | movie_ratings#index_user |
