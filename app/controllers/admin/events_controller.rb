class Admin::EventsController < Admin::BaseController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :add_marker, :remove_marker, :toggle]
  before_filter do
    @breadcrumb = [OpenStruct.new(href: admin_events_path, text: "现场管理")]
  end
  # GET /events
  # GET /events.json
  def index
    @events = Event.order('updated_at DESC').page params[:page]
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  def add_marker
    @event_marker = @event.event_markers.build event_marker_params
    @event_marker.save
    redirect_to :back
  end

  def remove_marker
    @event_marker = @event.event_markers.find params[:id]
    @event_marker.destroy
    redirect_to :back
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to edit_admin_event_path(@event), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        ap @event.errors
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to edit_admin_event_path(@event), notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle
    @event.enabled = !@event.enabled
    @event.save
    head :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :gallery, :artist_name, :address, :lng, :lat, :begin_at, :end_at)
    end

    def event_marker_params
      params.require(:event_marker).permit!
    end
end
