class AddBirdsIdToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :bird, null: false, foreign_key: { to_table: :birds }
  end
end
