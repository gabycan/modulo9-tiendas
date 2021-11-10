class PagesController < ApplicationController

    def home
        #1. Preguntar si existe la variable cookies[:cart_id]
        if cookies[cart_id]
            #si existe: buscar el registro de cart según el cookie
            #definir una variable @cart
            @cart = Cart.new
        end
    #cookies.delete[cart_id]
    end
end