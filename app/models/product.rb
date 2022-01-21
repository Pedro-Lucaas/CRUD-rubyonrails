class Product < ApplicationRecord
  belongs_to :vendor

  has_one :hardware
  has_one :software

  has_many :order_products
  has_many :orders, through: :order_products
end
