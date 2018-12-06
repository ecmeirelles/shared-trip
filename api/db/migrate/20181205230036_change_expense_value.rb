class ChangeExpenseValue < ActiveRecord::Migration[5.1]
  def change
    rename_column :expenses, :value, :price
  end
end
