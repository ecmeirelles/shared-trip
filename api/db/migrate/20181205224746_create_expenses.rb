class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :description
      t.float :value
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
