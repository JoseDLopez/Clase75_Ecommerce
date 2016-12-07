class CartsController < ApplicationController
  def show
  	@user=User.find(params[:user_id])
  	@cart=Cart.find(params[:id])
  	@orders = @cart.orders
  	@totalamount = 0
  	@orders.each do |o|
  		@totalamount += o.product.price
  	end
  end
end
