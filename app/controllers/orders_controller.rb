class OrdersController < ApplicationController
  before_action :require_admin, only: [:index, :show]

  def index
    @orders = Order.all
    @movie_orders = Movie.movie_orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @showing = Showing.find(params[:showing_id])
    @order = Order.new
  end

  def create
    order = Order.create(order_params)
    if order.persisted?
      order.showing.increment!(:seats_taken)
      flash[:success] = "Thank you! A confirmation has been sent to your email address."
      OrderMailer.order_confirmation(order).deliver
      redirect_to root_path
    else
      flash[:danger] = "There was an error processing this order: " + order.errors.full_messages.to_sentence
      redirect_to new_order_path(showing_id: order.showing.id)
    end
  end

  private 

  def order_params
    params.require(:order).permit(:name, :email, :credit_card, :expiration_date, :showing_id)
  end

end