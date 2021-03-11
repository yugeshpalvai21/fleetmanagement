require 'rails_helper'

feature 'Generating Reports' do
    scenario "for number of customers by nationality" do
        visit root_path
        
        click_link "Upload"

        attach_file('csv_data', Rails.root.join('spec', 'files', 'fleet_data.csv'))

        click_button "Upload"

        click_link "CustomerReport"

        
        expect(current_path).to eq customer_report_path
    end

    scenario "for average odometer reading by nationality" do
        visit root_path
        
        click_link "Upload"

        attach_file('csv_data', Rails.root.join('spec', 'files', 'fleet_data.csv'))

        click_button "Upload"

        click_link "OdometerReport"

        
        expect(current_path).to eq odometer_report_path
    end
end