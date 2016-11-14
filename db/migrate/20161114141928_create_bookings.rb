class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :space_required
      t.references :user, foreign_key: true
      t.references :storage_space, foreign_key: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
