require 'rails_helper'

RSpec.describe "Dashboard", type: :request do
  describe 'GET /' do
    it "displays the home page" do
      get "/"

      expect(response.status).to eq 200
    end
  end
end
