class Dashboard::BaseController < ApplicationController
  layout "dashboard"
  before_filter :authenticate_user!

  def index
  end

  def settings
    
  end
end
