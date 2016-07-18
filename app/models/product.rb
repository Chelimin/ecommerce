class Product < ActiveRecord::Base
#product class inherits from AR
  has_many :orders
  has_many :comments

  def average_rating
      comments.average(:rating).to_f
    end


end
