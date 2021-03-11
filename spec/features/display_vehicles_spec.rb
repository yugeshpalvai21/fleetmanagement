require 'rails_helper'

feature 'Display All Fleet Data' do
    scenario "After Uploading CSV" do
        visit root_path
        
        click_link "Upload"

        attach_file('csv_data', Rails.root.join('spec', 'files', 'fleet_data.csv'))

        click_button "Upload"

        click_link "Vehicles"

        expect(page).to have_content("Gemma")
        expect(page).to have_content("Audi A4")
    end
end