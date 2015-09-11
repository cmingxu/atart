class Admin::BaseController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  before_filter :admin_required!

  def admin_required!
    if !current_user.admin?
      redirect_to root_path and return
    end
  end


  def index
    @breadcrumb = [OpenStruct.new(href: admin_statistics_path, text: "后台管理首页")]
  end

  def statistics
    @breadcrumb = [OpenStruct.new(href: admin_statistics_path, text: "统计分析")]
  end
end
