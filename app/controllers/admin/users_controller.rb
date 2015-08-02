class Admin::UsersController < Admin::BaseController
  before_filter do
    @breadcrumb = [OpenStruct.new(href: admin_users_path, text: "用户管理")]
  end

  def index
    @users = User.page params[:page]
  end

  def new
    @breadcrumb << OpenStruct.new(href: new_admin_users_path, text: "新建用户")
  end
end
