class ApplicationController < ActionController::Base
  # reset captcha code after each request for security

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery

  before_filter :load_cart

  def load_cart
    ap session[:cart_text]
    @cart = Cart.from_text(session[:cart_text] || "")
  end

  def store_cart
    session[:cart_text] = @cart.to_s
    ap session[:cart_text]
  end
end
