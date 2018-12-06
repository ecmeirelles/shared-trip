class DestinationsController < ApplicationController
  http_basic_authenticate_with name: "elaine", password: "secret", only: :destroy
  def create
    @trip = Trip.find(params[:trip_id])
    @destination = @trip.destinations.create(destination_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @destination = @trip.destinations.find(params[:id])
    @destination.destroy
    redirect_to trip_path(@trip)
  end

  private
  def destination_params
    params.require(:destination).permit(:name, :date_range)
  end
end
