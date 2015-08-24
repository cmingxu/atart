class Admin::ChannelsArtworksController < Admin::BaseController

  def create
    if !Artwork.exists?(id: channel_artwork_param[:artwork_id])
      flash[:notice] = '作品不存在'
      redirect_to :back and return
    end
    ca = ChannelsArtwork.new channel_artwork_param
    ca.save
    redirect_to :back
  end

  def channel_artwork_param
    params.require(:channels_artwork).permit!
  end
end
