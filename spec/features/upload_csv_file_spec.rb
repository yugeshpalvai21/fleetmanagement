require 'rails_helper'

feature 'Create Customers and Vehicles' do
    scenario "By Uploading CSV file" do
        visit root_path
        
        click_link "Upload"

        expect(current_path).to eq new_vehicle_path

        attach_file('csv_data', Rails.root.join('spec', 'files', 'fleet_data.csv'))

        click_button "Upload"

        expect(Customer.count).to eq 6

        expect(current_path).to eq root_path
    end
end