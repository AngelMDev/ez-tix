class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def new
    @showing = Showing.find(params[:showing_id])
    @order = Order.new
  end

  def create
    order = Order.create!(order_params)
    if order.persisted?
      redirect_to order
    else
    end
  end

  private 

  def order_params
    params.require(:order).permit(:name, :email, :credit_card, :expiration_date, :showing_id)
  end

end