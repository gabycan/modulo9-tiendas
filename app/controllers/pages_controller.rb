class PagesController < ApplicationController
  
  def home
      #1. Preguntar si existe la variable cookies[:cart_id]
      if cookies[cart_id]
          #si existe: buscar el registro de Cart según el cookies[:cart_id]
          #definir una variable @cart
          @cart = Cart.find(cookies[:cart_id])
      else
        #si no existe: crear un registro en Cart
        #asignar la cookie con el id
        @cart = Cart.create(total: 0)
        cookies[:cart_id] = @cart.id
      end
      #cookies.delete(:cart_id)
      
      #2. Mostrar la cantidad de productos en el carrito
      
      #@products = Product.all.shuffle #problema N+1
      @products = Product.includes(:category).shuffle
  end

  def cart

  end
  
end