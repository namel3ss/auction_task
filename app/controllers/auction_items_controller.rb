class AuctionItemsController < ApplicationController
  before_action :set_item, only: %i(show)

  def index
    @items = AuctionItem.all
  end

  def show; end

  private

  def set_item
    @item = AuctionItem.find(params[:id])
  end
end
