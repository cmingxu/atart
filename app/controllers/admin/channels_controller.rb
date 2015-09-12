class Admin::ChannelsController < Admin::BaseController
  before_action :set_channel, only: [:show, :edit, :update, :destroy, :toggle]
  before_filter do
    @breadcrumb = [OpenStruct.new(href: admin_channels_path, text: "频道管理")]
  end

  def index
    @channels = Channel.page params[:id]
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new channel_params
    if @channel.save
      flash[:notice] = "保存成功"
    else
      flash[:alert] = "保存失败" + @channel.errors.full_messages.first
    end

    redirect_to admin_channel_path(@channel)
  end

  def update
    if @channel.update_attributes channel_params
      flash[:notice] = "保存成功"
    else
      flash[:alert] = "保存失败" + @channel.errors.full_messages.first
    end

    redirect_to admin_channel_path(@channel)
  end

  def toggle
    @channel.enabled = !@channel.enabled
    @channel.save
    head :ok
  end

  def destroy
    @channel.destroy
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channel
      @channel = Channel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def channel_params
      params.require(:channel).permit!
    end
end
