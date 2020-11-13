class ChangePriceToDecimal < ActiveRecord::Migration[6.0]
  def change
    rename_column :pizzas, :decimal, :price
    change_column :pizzas, :price, :decimal, precision: 5, scale: 2
  end
end
