class AddTimeframeToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :start_time, :time
    add_column :bookings, :end_time, :time
  end
end
