require 'rails_helper'

feature "Visit Home Page" do
    scenario "Able To Find All Links" do
        visit root_path

        expect(page).to have_content("Fleet Management")
    end
end