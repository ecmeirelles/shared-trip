class FixExpenseReference < ActiveRecord::Migration[5.1]
  def change
    add_reference :expenses, :users, index:true, foreign_key: true
  end
end
