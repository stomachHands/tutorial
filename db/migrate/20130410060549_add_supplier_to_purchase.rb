class AddSupplierToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :supplier_id, :integer
  end
end
