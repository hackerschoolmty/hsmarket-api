class Shop < ActiveRecord::Base
  resourcify
  has_many :products
end
