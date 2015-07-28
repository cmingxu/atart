class Admin::BaseController < ApplicationController
  layout "admin"

  def index
    @breadcrumb = [OpenStruct.new(href: admin_statistics_path, text: "后台管理首页")]
  end

  def statistics
    @breadcrumb = [OpenStruct.new(href: admin_statistics_path, text: "统计分析")]
  end
end
