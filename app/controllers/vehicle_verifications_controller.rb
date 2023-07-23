class VehicleVerificationsController < ApplicationController
  def index
  end

  def report
    @vehicle_verifications = VehicleVerification.all

    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Vehicle Verification Report", align: :center, size: 24, style: :bold
        pdf.move_down 20

        @vehicle_verifications.each do |verification|
          pdf.text "Vehicle ID: #{verification.vehicle_id}"
          pdf.text "Report Date: #{verification.report_date}"
          pdf.text "Condition: #{verification.condition}"
          pdf.text "Price: #{verification.price}"
          pdf.text "Make: #{verification.make}"
          pdf.text "Model: #{verification.model}"
          pdf.text "Color: #{verification.color}"
          pdf.move_down 20
        end

        send_data pdf.render, filename: "vehicle_verification_report.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
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
end
