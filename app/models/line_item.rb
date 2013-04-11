class LineItem < ActiveRecord::Base
  belongs_to :purchase
  belongs_to :product
  attr_accessible :cost, :quantity
end