class DiscoversController < ApplicationController
     
  def hot
  end

  def channel
    @channels = Channel.visible
  end

  def fund_raising
  end

  def shop
    @products = Product.page params[:page]
  end
end
