class Order < ApplicationRecord
  belongs_to :address
  belongs_to :client
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products

  validates :order_products, presence: true

  accepts_nested_attributes_for :order_products, allow_destroy: :true
  accepts_nested_attributes_for :products
end
