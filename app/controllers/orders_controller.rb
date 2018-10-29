class OrdersController < ApplicationController

  def new
    @showing = Showing.find(params[:showing_id])
    @order = Order.new
  end

  def create
    order = Order.create!(order_params)
    if order.persisted?
      order.showing.increment!(:seats_taken)
      flash[:success] = "Thank you! A confirmation has been sent to your email address."
      OrderMailer.order_confirmation(order).deliver
      redirect_to root_path
    else
      flash[:error] = "There was an error processing this order."
      redirect_to new_order_path(showing_id: order.showing.id)
    end
  end

  private 

  def order_params
    params.require(:order).permit(:name, :email, :credit_card, :expiration_date, :showing_id)
  end

end