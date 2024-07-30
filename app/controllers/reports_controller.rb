class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def sort
    # byebug
    params[:order].each do |key, value|
      Report.find(value[:id]).update(position: value[:position])
    end
    render body: nil
  end
end