class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user  = @order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] thanks for you order, attached with your esteem order#{order.token}")
  end

end
