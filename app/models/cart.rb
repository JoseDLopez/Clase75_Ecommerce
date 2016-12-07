class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :payment, optional: true
  has_many :orders
end
