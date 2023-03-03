class ChangeStatusForBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :start_date, :integer
    remove_column :bookings, :end_date, :integer
    add_column :bookings, :start_date, :datetime
    add_column :bookings, :end_date, :datetime
  end
end
