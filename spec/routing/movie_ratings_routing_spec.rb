require "rails_helper"

RSpec.describe MovieRatingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/movie_ratings").to route_to("movie_ratings#index")
    end


    it "routes to #show" do
      expect(:get => "/movie_ratings/1").to route_to("movie_ratings#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/movie_ratings").to route_to("movie_ratings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/movie_ratings/1").to route_to("movie_ratings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/movie_ratings/1").to route_to("movie_ratings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movie_ratings/1").to route_to("movie_ratings#destroy", :id => "1")
    end

  end
end
