class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.datetime :date_range
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
