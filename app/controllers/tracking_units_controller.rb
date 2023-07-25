class TrackingUnitsController < ApplicationController
  def index
    @tracking_units = TrackingUnit.all
  end

  def show_tracking
    @tracking_unit = TrackingUnit.find(params[:id])
    @tracks = @tracking_unit.tracks.order(timestamp: :desc).limit(10)
    # Add any logic here to prepare the data for displaying on the map
  end
  def new
    @tracking_unit = TrackingUnit.new
  end

  def create
    @tracking_unit = TrackingUnit.new(tracking_unit_params)

    if @tracking_unit.save
      redirect_to @tracking_unit, notice: 'Tracking unit was successfully created.'
    else
      render :new
    end
  end

  def edit
    @tracking_unit = TrackingUnit.find(params[:id])
  end

  def update
    @tracking_unit = TrackingUnit.find(params[:id])

    if @tracking_unit.update(tracking_unit_params)
      redirect_to @tracking_unit, notice: 'Tracking unit was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tracking_unit = TrackingUnit.find(params[:id])
    @tracking_unit.destroy

    redirect_to tracking_units_url, notice: 'Tracking unit was successfully destroyed.'
  end

  private

  def tracking_unit_params
    params.require(:tracking_unit).permit(:serial_number, :model, :status, :vehicle_id)
  end
end
