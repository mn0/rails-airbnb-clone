class CreateStorageSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :storage_spaces do |t|
      t.string :location
      t.integer :space
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
