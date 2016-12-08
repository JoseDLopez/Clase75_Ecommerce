class Payment < ApplicationRecord
	belongs_to :cart

	after_create :close_cart
	def close_cart
		self.cart.closestatus
	end

end
