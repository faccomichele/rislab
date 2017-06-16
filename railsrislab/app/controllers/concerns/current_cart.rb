module CurrentCart
  private
    def set_cart
      #test
      session[:user_id] = 57
      #test
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create(user_id: session[:user_id])
      session[:cart_id] = @cart.id
    end
end
