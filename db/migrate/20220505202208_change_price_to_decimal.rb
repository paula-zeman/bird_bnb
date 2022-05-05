class ChangePriceToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :birds, :price, :decimal, precision: 5, scale: 2
  end
end
