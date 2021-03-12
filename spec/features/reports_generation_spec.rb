require 'rails_helper'

feature 'Generating Reports' do
    def upload
        visit root_path
        
        click_link "Upload"

        attach_file('csv_data', Rails.root.join('spec', 'files', 'fleet_data.csv'))

        click_button "Upload"
    end

    scenario "for number of customers by nationality" do
        upload 

        visit "/"
        click_link "CustomerReport"

        expect(page).to have_content "Customer Report By Nationality"
        expect(page).to have_link "Download Report as CSV"

    end

    scenario "for average odometer reading by nationality" do
        upload

        visit "/"
        click_link "OdometerReport"

        expect(page).to have_content "Avg Odometer Report By Nationality"
        expect(page).to have_link "Download Report as CSV"
    end
end