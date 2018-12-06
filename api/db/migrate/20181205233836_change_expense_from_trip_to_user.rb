class ChangeExpenseFromTripToUser < ActiveRecord::Migration[5.1]
  def change
    remove_reference :expenses, :trip, index: true, foreign_key: true
    add_reference :users, :expense, index: true, foreign_key: true
  end
end
