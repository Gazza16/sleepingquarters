class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :boat_name
      t.string :type
      t.string :description
      t.decimal :price
      t.string :toilets
      t.string :shower
      t.string :baths
      t.string :kitchen

      t.timestamps
    end
  end
end
