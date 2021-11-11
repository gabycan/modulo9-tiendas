class PagesController < ApplicationController
  # def home
  #     cookies[:mi_primera_cookie] = "Hola mundo"
  # end
    
  def home
      
      if cookies[:plana]
          puts cookies[:plana]
      else
          cookies[:plana] = "COOKIE PLANA 🧀"
      end

      if cookies.signed[:firmada]
          puts cookies.signed[:firmada]
      else
          cookies.signed[:firmada] = "Hola mundo FIRMADO 🍕"
      end
      
      if cookies.encrypted[:encriptada]
          cookies.encrypted[:encriptada]
      else
          cookies.encrypted[:encriptada] = "TEXTO SECRETO 🧀"
      end

      if session[:variable_sesion]
        puts session[:variable_sesion]
      else
        session[:variable_session] = "EN LA SESION 🥓"
      end
    end

  def home
      #1. Preguntar si existe la variable cookies[:cart_id]
      if cookies[cart_id]
          #si existe: buscar el registro de cart según el cookie
          #definir una variable @cart
          @cart = Cart.find(cookies[:card_id])
      else
        #si no existe: crear un registro en cart
        #asignar la cookie con el id
        @cart = Cart.create(total: 0)
        cookies[:cart_id] = @cart.id
      end

      #2. mostrar la cantidad de productos en el carrito
      
      #@products = Product.all.shuffle
      @products = Product.all
  end
  
end