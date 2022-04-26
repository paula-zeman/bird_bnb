class ChangeLocationType < ActiveRecord::Migration[6.1]
  def change
    change_column :birds, :location, :string
  end
end
