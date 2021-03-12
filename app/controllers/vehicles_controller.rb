require 'csv'
class VehiclesController < ApplicationController
    before_action :clear_database, only: [:create]

    def index
        @vehicles = Vehicle.includes(:customer).all
    end
    
    def new
    end

    def create
        data_collection = CSV.open(params[:csv_data].path, headers: :first_row).map(&:to_h)
        data_collection.each do |data|
            customer = Customer.search(data)
            Vehicle.create(vehicle_params(data, customer))
        end
        redirect_to root_path, notice: 'Uploaded Customers and Vehicles Data Successfully'
    end


    def search
    end

    def search_results
        if params[:search_type] == 'vehicle_model'
            @vehicles = Vehicle.where('model LIKE ?', "%#{params[:search_value].downcase}%")
        else
            @customers = Customer.where("name LIKE ?", "%#{params[:search_value].downcase}%")
        end
    end

    def customer_report
        @customers = Customer.by_nationality
        respond_to do |format|
            format.html
            format.csv { csv_customers(@customers) }
        end
    end

    def odometer_report
        @report = Customer.avg_odometer_by_nationality
        respond_to do |format|
            format.html
            format.csv { csv_odometer(@report) }
        end
    end

    private

    def csv_customers customers
        headers = ['Country', 'Customers Count']
      
        csv_data = CSV.generate(headers: true) do |csv|
          csv << headers
          customers.to_a.each do |cust|
            csv << cust  
          end  
        end
        send_data csv_data, filename: "customers_report.csv"
    end

    def csv_odometer countries
        headers = ['Country', 'Average Odometer']
      
        csv_data = CSV.generate(headers: true) do |csv|
          csv << headers
          countries.to_a.each do |cust|
            csv << cust  
          end  
        end
        send_data csv_data, filename: "odometer_report.csv"
    end

    def vehicle_params data, customer
        { 
            model: data["Model"].strip.downcase, 
            year: data["Year"].strip, 
            chassis_number: data["ChassisNumber"].strip, 
            color: data["Color"].strip.downcase, 
            registration_date: data["RegistrationDate"].strip, 
            odometer_reading: data["OdometerReading"].strip,
            customer: customer
        }
    end

    def clear_database
        Customer.destroy_all
    end
end
