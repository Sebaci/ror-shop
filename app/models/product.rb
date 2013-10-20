class Product < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :name, :category_id, :descr, :price

  validates_numericality_of :price, :greater_than => 0
  #validates_format_of :price, with: /\A\d+\.?\d{0,2}\z/
  validates_format_of :price, with: /\A\d+(?:\.\d{1,2})?\z/
end
