class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :description
      t.integer :price_for_one_night
      t.integer :location
      t.integer :user_id

      t.timestamps
    end
  end
end
