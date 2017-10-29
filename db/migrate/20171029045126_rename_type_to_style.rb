class RenameTypeToStyle < ActiveRecord::Migration[5.1]
  def change
    rename_column :boats, :type, :style

  end
end
