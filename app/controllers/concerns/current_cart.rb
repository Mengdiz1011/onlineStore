module CurrentCart
    extend ActiveSupport::Concern
  
    # if session[:cart_id] exist, return the corresponding cart obj, 
    # else, create a new one and save its id into session.
    def set_cart
      @cart = Cart.find(session[:cart_id])     
      rescue ActiveRecord::RecordNotFound     # error handling
        @cart = Cart.create()
        session[:cart_id] = @cart.id
        return @cart
    end
  end