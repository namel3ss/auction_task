module ApplicationHelper
  def convert_item_price(item)
    rate = @current_user.exchange_rate_from(item.currency)
    (rate * item.price).round(2)
  end

  def display_item_price(item)
    "#{convert_item_price(item)} #{@current_user.currency.text}"
  end
end
