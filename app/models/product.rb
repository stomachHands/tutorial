class Product < ActiveRecord::Base
  attr_accessible :cost, :description, :name, :stock
  validates_presence_of :name, :description
  has_many :line_items
  has_and_belongs_to_many :purchases

  before_validation :assign_default_description

  private

  def assign_default_description
  	if description.blank?
  		self.description = name
  	end  	
  end
end
