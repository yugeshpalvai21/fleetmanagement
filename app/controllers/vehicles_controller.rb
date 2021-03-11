require 'csv'
class VehiclesController < ApplicationController
    def index
        @vehicles = Vehicle.includes(:customer).all
    end
    
    def new
    end

    def create
        data_collection = CSV.open(params[:csv_data].path, headers: :first_row).map(&:to_h)
        data_collection.each do |data|
            customer = Customer.create( name: data["Name"],
                                        nationality: data["Nationality"], 
                                        email: data["Email"])
            Vehicle.create(model: data["Model"], 
                            year: data["Year"], 
                            chassis_number: data["ChassisNumber"], 
                            color: data["Color"], 
                            registration_date: data["RegistrationDate"], 
                            odometer_reading: data["OdometerReading"],
                            customer: customer)
        end
        redirect_to root_path, notice: 'Customers Created Successfully'
    end


    def search
    end

    def search_results
        if params[:search_type] == 'vehicle_model'
            @vehicles = Vehicle.where('model LIKE ?', "#{params[:search_value]}")
        else
            @customers = Customer.where("name LIKE ?", "%#{params[:search_value]}%")
        end
    end
end
