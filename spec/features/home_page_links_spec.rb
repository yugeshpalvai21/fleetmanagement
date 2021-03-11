require 'rails_helper'

feature "Visit Home Page" do
    scenario "Able To Find All Links" do
        visit root_path

        expect(page).to have_content("Fleet Management")
        expect(page).to have_link("Upload")
        expect(page).to have_link("Vehicles")
        expect(page).to have_link("Search")
        expect(page).to have_link("CustomerReport")
        expect(page).to have_link("OdometerReport")
    end
end