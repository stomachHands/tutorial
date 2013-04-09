class Purchase < ActiveRecord::Base
	has_one :invoice
  attr_accessible :delivered_at, :description
end
