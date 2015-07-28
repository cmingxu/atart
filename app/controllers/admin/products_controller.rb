class Admin::ProductsController < Admin::BaseController
  before_filter do
    @breadcrumb = [OpenStruct.new(href: admin_products_path, text: "艺术品管理")]
  end
  def index
  end
end
