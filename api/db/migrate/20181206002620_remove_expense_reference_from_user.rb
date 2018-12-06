class RemoveExpenseReferenceFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :expense
  end
end
