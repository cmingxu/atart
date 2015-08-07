class DiscoversController < ApplicationController
     
  def hot
  end

  def channel
  end

  def fund_raising
  end

  def shop
    @products = Product.page params[:page]
  end
end
