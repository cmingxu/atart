class Admin::ArtistsController < Admin::BaseController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  before_filter do
    @breadcrumb = [OpenStruct.new(href: admin_artists_path, text: "艺术家管理")]
  end

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.page params[:page]
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
  end

  # GET /artists/new
  def new
    @breadcrumb << OpenStruct.new(href: new_admin_artist_path, text: "创建艺术家")
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to admin_artists_path, notice: '艺术家创建成功' }
        format.json { render :show, status: :created, location: @artist }
      else
        flash.now[:notice] = @artist.errors.full_messages.first
        format.html { render :new }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1
  # PATCH/PUT /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to admin_artists_path, notice: '艺术家修改成功' }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to admin_artists_url, notice: '艺术家删除成功' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit!
    end
end
