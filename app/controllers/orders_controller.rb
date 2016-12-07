class OrdersController < ApplicationController
  def create
  	@product = Product.find(params[:product_id])
  	@cart = current_user.carts.last
  	@product.orders.build(cart_id: @cart.id).save
  	flash[:notice] = "Se agregó un #{@product.name} al carro de compras..."
  	redirect_to root_path
  end

  def destroy
  	@product = Product.find(params[:product_id])
  	@order = Order.find(params[:id])
  	cart = @order.cart
  	user = cart.user
  	@order.destroy
  	flash[:notice] = "Se eliminó un #{@product.name} al carro de compras..."
  	redirect_to user_cart_path(user.id,cart.id)
  end
end
