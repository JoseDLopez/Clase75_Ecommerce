class PaymentsController < ApplicationController
	def create
	@cart = Cart.find(params[:cart_id])
	@user = User.find(params[:user_id])
	@orders = @cart.orders
	@totalamount = 0
  	@orders.each do |o|
  		@totalamount += o.product.price
  	end
  	@cart.total = @totalamount

    if Payment.new(amount: @cart.total, cart: @cart).save
		flash[:notice] = "Se procesó el pago del carro #{@cart.id}..."
	    redirect_to user_cart_path(@user.id,@cart.id)
    else
		flash[:notice] = "NO Se procesó el pago del carro #{@cart.id}..."
	    redirect_to user_cart_path(@user.id,@cart.id)
    end

	end
end
