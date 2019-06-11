class ApplicationController < ActionController::Base
  before_action :init

  def init
    @current_user = User.first
    @exchange_rate_stroage = ExchangeRateStorage.new(@current_user.currency)
  end
end
