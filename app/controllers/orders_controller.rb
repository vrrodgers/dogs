class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params[:id])  
  end
  
  def create 
    
    dog = dog.find(params[:dog_id])
    price = Dog.find_by(id: params[:product_id]).price
    subtotal = quantity * price
    tax = subtotal * 0.09
    total = subtotal + tax
    quantity = params[:quantity].to_i
    order = Order.new(quantity => quantity, :user_id => current_user.id, dog_id => dog_id)
    order.save
    flash[:success] = "Thanks for shopping."
    redirect_to "/dogs/#{order.id}"
  end
    
end
