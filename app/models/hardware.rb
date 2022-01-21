class Hardware < ApplicationRecord
  belongs_to :product
  self.primary_key = :product_id
  accepts_nested_attributes_for :product
end
