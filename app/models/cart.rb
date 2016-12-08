class Cart < ApplicationRecord
	after_save :create_cart
	belongs_to :user
	has_one :payment
	has_many :orders

	def closestatus
		self.state = "PAID"
		self.save
	end

	def create_cart
		if (self.state == "PAID")
			self.user.carts.build(state: "open").save
		end
	end
end
