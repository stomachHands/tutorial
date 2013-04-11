class Purchase < ActiveRecord::Base
  attr_accessible :delivered_at, :description, :supplier_attributes, :supplier_id
  has_one :invoice
  belongs_to :supplier
  has_many :line_items
  has_and_belongs_to_many :products

  def display_supplier
  	return supplier.name unless supplier.nil?
  end
end
