class ApplicationController < ActionController::Base
  # reset captcha code after each request for security

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery

  before_filter :load_cart

  def load_cart
    @cart = Cart.from_text(session[:cart_text] || "")
  end

  def store_cart
    session[:cart_text] = @cart.to_s
  end

  def add_cart
    @cart.add_line_item(LineItem.from_text(params[:text]))
  end

  def delete_cart
    @cart.remove_line_item(LineItem.from_text(params[:text]))
  end
end
