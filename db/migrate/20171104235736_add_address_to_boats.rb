class AddAddressToBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :address, :string
  end
end
