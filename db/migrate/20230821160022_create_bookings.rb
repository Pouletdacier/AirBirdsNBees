class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :price_total
      t.string :status
      t.date :beginning_date
      t.date :end_date
      t.references :renter, null: false, foreign_key: { to_table: 'users' }
      t.references :bird, null: false, foreign_key: true

      t.timestamps
    end
  end
end
