class ChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    rename_column :birds, :type, :breed
  end
end
