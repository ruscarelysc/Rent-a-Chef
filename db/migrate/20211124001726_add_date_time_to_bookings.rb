class AddDateTimeToBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :start_time
    remove_column :bookings, :end_time
    add_column :bookings, :start_time, :datetime
    add_column :bookings, :end_time, :datetime
  end
end
