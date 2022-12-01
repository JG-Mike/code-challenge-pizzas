class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :ingredients
      t.string :name

      t.timestamps
    end
  end
end
