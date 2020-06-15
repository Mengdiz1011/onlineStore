class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart
  # skip_before_action :authorize
  def index
    @products = Product.all
  end
end
