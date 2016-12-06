class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  has_many :orders
end
