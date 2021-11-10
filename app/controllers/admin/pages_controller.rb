class PagesController < ApplicationController

    # def home
    #     cookies[:mi_primera_cookie] = "Hola mundo"
    # end

    def home
        if cookies.signed[:mi_primera_cookie]
            puts cookies.signed[:mi_primera_cookie]
        else
            cookies.signed[:mi_primera_cookie] = "Hola mundo FIRMADO 🍕"
        end
        
        if cookies.encrypted[:encriptada]
            cookies.encrypted[:encriptada]
        else
            cookies.encrypted[:encriptada] = "TEXTO SECRETO 🧀"
        end
    end

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