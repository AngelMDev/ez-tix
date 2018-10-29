class OrderMailer < ApplicationMailer

  def order_confirmation(order)
    @order = order
    mail(to: @order.email, subject: "Your ticket purchase")

  end
end
