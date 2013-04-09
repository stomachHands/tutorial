class Invoice < ActiveRecord::Base
  belongs_to :purchase
  attr_accessible :reference_number, :purchase_id
  def display_purchase
  	return purchase.description unless purchase.nil?
  	"(no purchase set)"
  end
end
