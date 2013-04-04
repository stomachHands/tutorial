class Product < ActiveRecord::Base
  attr_accessible :cost, :description, :name, :stock
end
