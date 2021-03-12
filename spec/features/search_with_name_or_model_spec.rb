require 'rails_helper'

feature 'Serch Vehicles' do
    def upload
        visit root_path
        
        click_link "Upload"
        attach_file('csv_data', Rails.root.join('spec', 'files', 'fleet_data.csv'))

        click_button "Upload"
    end

    scenario "With Model Name" do
        upload

        visit "/"
        click_link "Search"

        select("vehicle_model", from: "search_type").select_option
        fill_in "search_value", with: "Audi A4"

        click_button "Search"

        expect(page).to have_content("Vehicle(s) Found")
    end

    scenario "With Customer Name" do
        upload

        visit "/"
        click_link "Search"

        select("customer_name", from: "search_type").select_option
        fill_in "search_value", with: "Gimma"

        click_button "Search"

        expect(page).to have_content("Customer(s) Found")
    end
end