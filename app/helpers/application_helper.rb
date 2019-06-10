module ApplicationHelper
  def convert_bid_price(bid)
    rate = @current_user.exchange_rate_from(bid.currency)
    (rate * bid.price).round(2)
  end

  def display_bid_price(bid)
    "#{convert_bid_price(bid)} #{@current_user.currency.text}"
  end
end
