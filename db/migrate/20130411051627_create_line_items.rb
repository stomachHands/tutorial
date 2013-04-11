class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :purchase
      t.references :product
      t.integer :quantity
      t.decimal :cost

      t.timestamps
    end
    add_index :line_items, :purchase_id
    add_index :line_items, :product_id
  end
end
