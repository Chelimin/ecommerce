class Product < ActiveRecord::Base
#product class inherits from AR
  has_many :orders
  has_many :comments
end
