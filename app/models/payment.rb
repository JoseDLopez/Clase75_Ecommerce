class Payment < ApplicationRecord
	belongs_to :carts

	after_create :close_cart

	def close_cart
	# 	cart
	# # self.carts.build(state: 'open',total: 0).save

	# # @cart.payment_id = Payment.last.id
	# # @cart.state = "PAID"
	end

end
