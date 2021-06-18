class AddColumnsPriceAndDaysToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :nb_of_days, :integer
    add_column :bookings, :total_price, :integer
  end
end
