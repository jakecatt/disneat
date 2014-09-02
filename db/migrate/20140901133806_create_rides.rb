class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :name
      t.integer :min_height
    end
  end
end
