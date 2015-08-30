class Dashboard::BaseController < ApplicationController
  layout "user"
  before_filter :authenticate_user!

  def index
    redirect_to dashboard_artworks_path
  end

  def settings
  end

  def update_avatar
    if params[:avatar]
      current_user.avatar = params[:avatar]
      current_user.save
    end
    redirect_to dashboard_settings_path, notice: "头像更新成功"
  end

  def change_password
    current_user.password = params[:password]
    current_user.password_confirmation = params[:password_confirmation]
    if current_user.save
      redirect_to dashboard_settings_path, notice: "密码更新成功"
    else
      redirect_to dashboard_settings_path
    end
  end
end
