class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :value
      t.integer :stock
      t.string :active

      t.timestamps
    end
  end
end
