class Address < ApplicationRecord
    has_many :clients
    has_many :vendors
    has_many :orders
end
