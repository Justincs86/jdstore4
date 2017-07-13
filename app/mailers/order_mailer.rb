class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user  = @order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] thanks for your shopping, attached with your esteem order#{order.token}")
  end

  def apply_cancel(order)
    @order = order
    @order.user = order.user
    @product_lists = order.product_lists

    mail(to: "admin@test.com", subject: "[JDStore] User#{order.user.email} confirm cancel order #{order.token}")
  end

  def notify_ship(order)
    @order = order
    @user  = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] Your order#{@token.token}has been shipped" )
  end

  def notify_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[JDStore] Your order#{@order.token}has been cancelled")
  end






end
