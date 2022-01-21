class Software < ApplicationRecord
  self.primary_key = :product_id
  belongs_to :product
  accepts_nested_attributes_for :product
end
