class ChangePriceToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :birds, :price, :float
  end
end
