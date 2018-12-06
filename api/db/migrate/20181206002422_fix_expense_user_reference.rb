class FixExpenseUserReference < ActiveRecord::Migration[5.1]
  def change
    remove_reference :expenses, :users
    add_reference :expenses, :user, index:true, foreign_key: true
  end
end
