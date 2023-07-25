class VehiclesController < ApplicationController
  include VehiclesHelper
  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def calculate_fuel_consumption
    @vehicle = Vehicle.find(params[:id])
    # Add any logic here to calculate fuel consumption based on provided data
    # You can store the calculated fuel consumption in the database or use it in the view
  end
  def customer_report
    # Logic to fetch the data for the customer report, e.g., Customer.group(:country).count
    @customers = calculate_customer_report_data
    respond_to do |format|
      format.html # Render the customer_report.html.erb view
      format.csv { send_data generate_csv(@customers), filename: "customer_report.csv" } # Replace generate_csv with your method to generate CSV data
    end
  end

  def odometer_report
    # Replace this with the logic to fetch and calculate the report data
    @report_data = calculate_odometer_report_data

    respond_to do |format|
      format.html # This will render views/vehicles/odometer_report.html.erb
      format.csv { send_data generate_csv(@report_data), filename: "odometer_report.csv" }
    end
  end

  # ... other actions ...

  private

  def fetch_customers_by_nationality
    # Replace this with your own logic to fetch customers and their nationalities
    # For example, if you have a Customer model with `name` and `nationality` attributes:
    # You can use the group method to group customers by nationality and count them.
    Customer.group(:nationality).count
  end

  def calculate_odometer_report_data
    # Fetch all vehicles and group them by country
    vehicles_by_country = Vehicle.group(:country).average(:odometer)
    Customer.group(:country).count
    # Convert the grouped data to a hash with country names as keys and average odometer values as values
    report_data = {}
    vehicles_by_country.each do |country, avg_odometer|
      report_data[country] = avg_odometer

    end

    return report_data
  end

  def generate_csv(data)
    # Replace this with your own logic to generate CSV content
    # You can use the `csv` gem or other methods to format the data as CSV
  end
end
