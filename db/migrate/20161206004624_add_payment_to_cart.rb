class AddPaymentToCart < ActiveRecord::Migration[5.0]
  def change
    add_reference :carts, :payment, foreign_key: true
  end
end
