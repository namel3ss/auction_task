module ApplicationHelper
  def convert_bid_price(bid)
    rate = @exchange_rate_stroage.from(bid.currency)
    (rate * bid.price).round(2)
  end

  def display_bid_price(bid)
    "#{convert_bid_price(bid)} #{@current_user.currency.text}"
  end
end
