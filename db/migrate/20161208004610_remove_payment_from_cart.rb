class RemovePaymentFromCart < ActiveRecord::Migration[5.0]
  def change
    remove_reference :carts, :payment, foreign_key: true
  end
end
