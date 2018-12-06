class UsersController < ApplicationController
  http_basic_authenticate_with name: "elaine", password: "secret", only: :destroy
  def show
    @trip = Trip.find(params[:trip_id])
    @user = @trip.users.find(params[:id])
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @user = @trip.users.create(user_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @user = @trip.users.find(params[:id])
    @user.destroy
    redirect_to trip_path(@trip)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
