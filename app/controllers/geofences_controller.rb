class GeofencesController < ApplicationController
  def index
    @tracking_unit = TrackingUnit.find(params[:tracking_unit_id])
    @geofences = @tracking_unit.geofences
  end

  def create
    @tracking_unit = TrackingUnit.find(params[:tracking_unit_id])
    @geofence = @tracking_unit.geofences.build(geofence_params)
    if @geofence.save
      # Handle successful creation
    else
      # Handle validation errors
    end
  end

  private

  def geofence_params
    params.require(:geofence).permit(:name, :latitude, :longitude, :radius)
  end
end
