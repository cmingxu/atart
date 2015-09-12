class DiscoversController < ApplicationController
  def base
    @artworks = Artwork.enabled
    render :hot
  end
  def hot
    @artworks = Artwork.enabled.hot
  end

  def channel
    @channels = Channel.visible
  end

  def fund_raising
    @fund_raisings = FundRaising.enabled
  end

  def shop
    @products = Product.page params[:page]
  end
end
