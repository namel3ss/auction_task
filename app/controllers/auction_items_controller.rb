class AuctionItemsController < ApplicationController
  before_action :set_item, only: %i(show bid)

  def index
    @items = AuctionItem.all
  end

  def show
    @bid = Bid.new
  end

  def bid
    rate = @exchange_rate_stroage.to(@item.currency)

    @item.bids.create!(currency: @item.currency,
                       price: bid_params[:price].to_f * rate,
                       user: @current_user)

    redirect_to auction_item_path(@item)
  end

  private

  def set_item
    @item = AuctionItem.find(params[:id])
  end

  def bid_params
    params.fetch(:bid, {}).permit(:price)
  end
end
