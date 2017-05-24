require 'rails_helper'

RSpec.describe "Adding welcome message to home page", type: :feature do
  scenario "shows welcome message" do
    visit "/"

    within("h1") {
      expect(page).to have_content("Welcome to the Casino")
    }
  end
end
