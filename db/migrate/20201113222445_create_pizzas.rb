class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :type
      t.string :size
      t.string :topping
      t.integer :decimal, precision: 5, scale: 2

      t.timestamps
    end
  end
end
