class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.string :status
      t.integer :user_id
      t.integer :planet_id
      t.integer :start_date
      t.integer :end_date

      t.timestamps
    end
  end
end
