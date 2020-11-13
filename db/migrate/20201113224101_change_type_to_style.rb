class ChangeTypeToStyle < ActiveRecord::Migration[6.0]
  def change
    rename_column :pizzas, :type, :style
  end
end
