class TripsController < ApplicationController
  http_basic_authenticate_with name: "elaine", password: "secret", except: [:index, :show]
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to @trip
    else
      render 'new'
    end
  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      redirect_to @trip
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    redirect_to trips_path
  end

  private
  def trip_params
    params.require(:trip).permit(:name, :description)
  end
end
