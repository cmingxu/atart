class DiscoversController < ApplicationController
     
  def hot
    @artworks = Artwork.enabled.hot
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
