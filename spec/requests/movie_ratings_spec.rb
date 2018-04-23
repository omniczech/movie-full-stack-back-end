require 'rails_helper'

RSpec.describe "MovieRatings", type: :request do
  describe "GET /movie_ratings" do
    it "works! (now write some real specs)" do
      get movie_ratings_path
      expect(response).to have_http_status(200)
    end
  end
end
