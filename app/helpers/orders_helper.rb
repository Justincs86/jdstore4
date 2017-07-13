module OrdersHelper
  def render_order_paid_status(order)
    if order.is_paid?
      "Paid"
    else
      "Unpaid"
    end
  end

end
