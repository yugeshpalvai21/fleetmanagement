require 'rails_helper'

feature 'Display All Fleet Data' do
    def upload
        visit root_path
        
        click_link "Upload"

        attach_file('csv_data', Rails.root.join('spec', 'files', 'fleet_data.csv'))

        click_button "Upload"
    end

    scenario "After Uploading CSV" do
        upload
        
        visit "/"
        click_link "Vehicles"

        expect(page).to have_content("Gemma")
        expect(page).to have_content("Audi A4")
    end
end