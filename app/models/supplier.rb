class Supplier < ActiveRecord::Base
  attr_accessible :contact_number, :name
  has_many :purchases
end
