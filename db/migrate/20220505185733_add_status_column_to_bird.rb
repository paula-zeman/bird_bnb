class AddStatusColumnToBird < ActiveRecord::Migration[6.1]
  def change
    add_column :birds, :status, :boolean, default: false
  end
end
