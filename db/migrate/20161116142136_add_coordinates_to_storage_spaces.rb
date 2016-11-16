class AddCoordinatesToStorageSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :storage_spaces, :latitude, :float
    add_column :storage_spaces, :longitude, :float
  end
end
