class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.all
  end
end
