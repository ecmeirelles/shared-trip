class ExpensesController < ApplicationController
  http_basic_authenticate_with name: "elaine", password: "secret", only: :destroy
  def create
    @trip = Trip.find(params[:trip_id])
    @user = @trip.users.find(params[:user_id])
    @expense = @user.expenses.create(expense_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @user = @trip.users.find(params[:user_id])
    @expense = @user.expenses.find(params[:id])
    @expense.destroy
    redirect_to trip_path(@trip)
  end

  private
  def expense_params
    params.require(:expense).permit(:description, :price)
  end
end
